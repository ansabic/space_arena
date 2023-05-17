import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:space_arena/coordinator/events/event.dart';
import 'package:space_arena/model/team.dart';

import 'events/register_event/register_event.dart';

@lazySingleton
class ServerConnection {
  final List<Socket> _connections = [];

  void addConnection({required Socket connection}) {
    _connections.add(connection);
    _registerClient(connection: connection);
  }

  void _registerClient({required Socket connection}) {
    final event =
        RegisterEvent(team: Team.values.firstWhere((element) => element.index == _connections.indexOf(connection)));
    connection.add(event.getBytes());
  }

  ///The idea is to cache nothing within server but only to send data to all clients once server gets event
  Future<void> broadcastEvent({required Event event}) async {
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
