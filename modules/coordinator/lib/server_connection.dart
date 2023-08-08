import 'dart:io';

import 'package:events/event.dart';
import 'package:events/register_event/register_event.dart';
import 'package:events/start_game_event/start_game_event.dart';
import 'package:injectable/injectable.dart';
import 'package:model/team.dart';

@lazySingleton
class ServerConnection {
  final List<Socket> _connections = [];


  void addConnection(Socket connection, {bool test = false}) {
    _connections.add(connection);
    _registerClient(connection: connection);
    if(_connections.length == (test ? 1 : 2)) {
      broadcastEvent(event: const StartGameEvent());
    }
  }

  void _registerClient({required Socket connection}) {
    final event =
        RegisterEvent(team: Team.values.firstWhere((element) => element.index == _connections.indexOf(connection)));
    connection.add(event.getBytes());
  }

  ///The idea is to cache nothing within server but only to send data to all clients once server gets event
  void broadcastEvent({required Event event})  {
    for (var connection in _connections) {
      connection.add(event.getBytes());
    }
  }

  Future<void> _powerOff() async {
    for (var e in _connections) {
      await e.flush();
      await e.close();
    }
    _connections.clear();
  }

  int removeConnection({required Socket connection}) {
    final index = _connections.indexOf(connection);
    _connections.remove(connection);
    return index;
  }

  Future<void> checkIfEmpty() async {
    if (_connections.isEmpty) {
      await _powerOff();
    }
  }
}
