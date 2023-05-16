import 'dart:convert';
import 'dart:io';

import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/coordinator/events/disconnect_player_event/disconnect_player_event.dart';
import 'package:space_arena/coordinator/events/event.dart';
import 'package:space_arena/coordinator/events/shoot_event/shoot_event.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/event_service.dart';

import '../characters/bullet.dart';
import '../characters/types/movable_sprite_component.dart';
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
      final events = eventService.getEvents(utf8Message: utf8.decode(bytes));
      for (var event in events) {
        if (!_registered) {
          if (event is RegisterEvent) {
            _registered = true;
            playerId = event.playerId;
            getIt<CharacterManager>().add(InitCharacters(isFirst: event.playerId == 0));
          }
          break;
        }

        ///Handle all the other events here
        if (_registered) {
          if (event is RegisterEvent) {
            addEvent(const StartGameEvent());
          } else if (event is MoveEvent) {
            (getIt<CharacterManager>().characters[event.playerId] as MovableSpriteComponent)
                .moveTo(Vector2(event.x, event.y));
          } else if (event is StartGameEvent) {
            //TODO Needs proper implementation of start events
            debugPrint("Started");
          } else if (event is DisconnectPlayerEvent) {
            //getIt<CharacterManager>().add(RemoveCharacter(character: event.playerId));
          } else if (event is ShootEvent) {
            getIt<SpaceArenaGame>().add(Bullet(
                start: Vector2(event.startX, event.startY),
                direction: Vector2(event.dirX, event.dirY),
                playerId: event.playerId));
          }
        }
      }

      ///Handle only registration events here
    });
  }
}
