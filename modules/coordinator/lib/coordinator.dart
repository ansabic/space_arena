import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:events/disconnect_player_event/disconnect_player_event.dart';
import 'package:events/event_service.dart';
import 'package:injectable/injectable.dart';
import 'package:intranet_ip/intranet_ip.dart';
import 'package:model/team.dart';

import '../server_connection.dart';
import 'di/di.dart';

Future<void> main(List<String> args) async {
  configureCoordinatorDependencies();
  final coordinator = getIt<Coordinator>();
  coordinator.runGameServer();
}

@lazySingleton
class Coordinator {
  final EventService _eventService;
  final ServerConnection _connectionsService;
  late RawDatagramSocket udpSocket;
  late ServerSocket _tcpSocket;
  Timer? timer;
  bool _stoppedUdp = false;

  Coordinator(this._eventService, this._connectionsService);

  void stopHostServer() {
    print("stopped listening udp...");
    timer?.cancel();
    udpSocket.close();
  }

  Stream<String?> hostServerListener({required bool isHost}) async* {
    await initHostServer();
    yield* udpSocket.map((event) {
      final data = udpSocket.receive();
      final message = utf8.decode(data?.data ?? []);
      if (message.startsWith("space_arena_host")) {
        final ip = message.replaceAll("space_arena_host", "");
        return ip;
      }
      if (message.startsWith("stop_udp_space_arena")) {
        final ip = message.replaceAll("stop_udp_space_arena", "");
        stopHostServer();
        _stoppedUdp = true;
        return ip;
      }
      return null;
    });
  }

  Future<void> initHostServer() async {
    udpSocket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 55600);
    udpSocket.broadcastEnabled = true;
    udpSocket.readEventsEnabled = true;
    print("Udp server started");
  }

  void ping() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) async {
      print("ping");
      udpSocket.send(
          utf8.encode("space_arena_host" + (await intranetIpv4()).address), InternetAddress("255.255.255.255"), 55600);
    });
  }

  Future<void> runGameServer() async {
    _tcpSocket = await ServerSocket.bind(InternetAddress.anyIPv4, 55555);
    print("Tcp server started");
    _listenToTcpEvents();
  }

  void _listenToTcpEvents() {
    print("started listening tcp...");
    try {
      _tcpSocket.listen((connection) {
        if(!_stoppedUdp) {
          return;
        }
        print("Added connection to server: " + connection.remoteAddress.address);
        _connectionsService.addConnection(connection);
        connection.listen((message) {
          final events = _eventService.getEvents(utf8Message: utf8.decode(message));
          for (var element in events) {
            _connectionsService.broadcastEvent(event: element);
          }
        }, onDone: () async {
          final index = _connectionsService.removeConnection(connection: connection);
          _connectionsService.broadcastEvent(
              event: DisconnectPlayerEvent(team: Team.values.firstWhere((element) => element.index == index)));
          await _connectionsService.checkIfEmpty();
        });
      });
    } on Exception catch (e) {
      print(e);
    }
  }
}
