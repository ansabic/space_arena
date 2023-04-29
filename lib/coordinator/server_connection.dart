import 'dart:io';

import 'package:space_arena/events/event.dart';
import 'package:space_arena/events/register_event/register_event.dart';

class ServerConnection {
  final List<Socket> _connections = [];

  void addConnection({required Socket connection}) {
    _connections.add(connection);
    _registerClient(connection: connection);
  }

  void _registerClient({required Socket connection}) {
    final event = RegisterEvent(playerId: _connections.indexOf(connection));
    connection.add(event.getBytes());
  }

  void broadcastEvent({required Event event}) {
    for (var connection in _connections) {
      connection.add(event.getBytes());
    }
  }

  Future<void> powerOff() async {
    for (var e in _connections) {
      await e.flush();
      await e.close();
    }
  }
}
