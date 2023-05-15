import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart';
import '../services/event_service.dart';
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
          final event = _eventService.getEvent(utf8Message: utf8.decode(message));
          _connectionsService.broadcastEvent(event: event);
        });
      });
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
