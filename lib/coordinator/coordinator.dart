import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import '../services/event_service.dart';
import 'server_connection.dart';

Future<void> main(List<String> arguments) async {
  final eventService = EventService();
  final connectionsService = ServerConnection();
  final socket = await ServerSocket.bind("192.168.1.9", 55555);
  if (kDebugMode) {
    print("Server started");
  }
  try {
    socket.listen((connection) {
      connectionsService.addConnection(connection: connection);
      connection.listen((message) {
        final event = eventService.getEvent(utf8Message: utf8.decode(message));
        connectionsService.broadcastEvent(event: event);
      });
    });
  } on Exception catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
}
