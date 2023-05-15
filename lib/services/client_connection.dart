import 'dart:convert';
import 'dart:io';

import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/coordinator/events/disconnect_player_event/disconnect_player_event.dart';
import 'package:space_arena/coordinator/events/event.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager.dart';
import 'package:space_arena/services/event_service.dart';

import '../coordinator/events/move_event/move_event.dart';
import '../coordinator/events/register_event/register_event.dart';
import '../coordinator/events/start_game_event/start_game_event.dart';
import '../space_arena_game.dart';

@lazySingleton
class ClientConnection {
  Socket? _connection;
  late int playerId;
  final eventService = EventService();
  final eventMap = {};
  bool _registered = false;

  Future<void> connect() async {
    _connection = await Socket.connect("192.168.1.9", 55555);
    _subscribe();
  }

  Future<void> addEvent(Event event) async {
    _connection?.add(event.getBytes());
  }

  void _subscribe() {
    _connection?.listen((bytes) async {
      final event = eventService.getEvent(utf8Message: utf8.decode(bytes));

      ///Handle only registration event here
      if (!_registered) {
        if (event is RegisterEvent) {
          _registered = true;
          playerId = event.playerId;
          if (playerId == 0) {
            final player = getIt<CharacterManager>().addPlayerCharacter(playerId: playerId);
            getIt<SpaceArenaGame>().add(player);
          } else {
            final player = getIt<CharacterManager>().addPlayerCharacter(isSecond: true, playerId: playerId);
            getIt<SpaceArenaGame>().add(player);
            final otherPlayer = getIt<CharacterManager>().addPlayerCharacter(playerId: 0);
            getIt<SpaceArenaGame>().add(otherPlayer);
          }
        }
      }

      ///Handle all the other events here
      if (_registered) {
        if (event is RegisterEvent) {
          final player = getIt<CharacterManager>().addPlayerCharacter(isSecond: true, playerId: event.playerId);
          getIt<SpaceArenaGame>().add(player);
          addEvent(const StartGameEvent());
        } else if (event is MoveEvent) {
          getIt<CharacterManager>().characters[event.playerId].moveTo(Vector2(event.x, event.y));
        } else if (event is StartGameEvent) {
          //TODO Needs proper implementation of start event
          debugPrint("Started");
        } else if (event is DisconnectPlayerEvent) {
          final character = getIt<CharacterManager>().removeCharacter(playerId: event.playerId);
          getIt<SpaceArenaGame>().remove(character);
          debugPrint("Started");
        }
      }
    });
  }
}
