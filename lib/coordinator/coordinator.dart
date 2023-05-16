import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart';
import '../services/event_service.dart';
import 'events/disconnect_player_event/disconnect_player_event.dart';
import 'server_connection.dart';

Future<void> main(List<String> args) async {
  configureDependencies();
  final coordinator = getIt<Coordinator>();
  coordinator.runServer();
}

@injectable
class Coordinator {
  final EventService _eventService;
  final ServerConnection _connectionsService;

  Coordinator(this._eventService, this._connectionsService);

  Future<void> runServer() async {
    final socket = await ServerSocket.bind("192.168.1.9", 55555);
    if (kDebugMode) {
      print("Server started");
    }
    try {
      socket.listen((connection) {
        _connectionsService.addConnection(connection: connection);
        connection.listen((message) {
          final events = _eventService.getEvents(utf8Message: utf8.decode(message));
          for (var element in events) {
            _connectionsService.broadcastEvent(event: element);
          }
        }, onDone: () async {
          final index = _connectionsService.removeConnection(connection: connection);
          _connectionsService.broadcastEvent(event: DisconnectPlayerEvent(playerId: index));
          await _connectionsService.checkIfEmpty();
        });
      });
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
