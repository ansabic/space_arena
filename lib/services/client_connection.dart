import 'dart:convert';
import 'dart:io';

import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/events/event.dart';
import 'package:space_arena/events/move_event/move_event.dart';
import 'package:space_arena/events/register_event/register_event.dart';
import 'package:space_arena/services/character_manager.dart';
import 'package:space_arena/services/event_service.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../space_arena_game.dart';

@lazySingleton
class ClientConnection {
  Socket? _connection;
  int? playerId;
  final eventService = EventService();
  final eventMap = {};
  bool _registered = false;

  Future<void> connect() async {
    _connection = await Socket.connect("192.168.1.9", 55555);
    _subscribe();
  }

  void addEvent(Event event) {
    _connection?.add(event.getBytes());
  }

  void _subscribe() {
    _connection?.listen((bytes) async {
      final event = eventService.getEvent(utf8Message: utf8.decode(bytes));
      if (!_registered) {
        if (event is RegisterEvent) {
          _registered = true;
          playerId = event.playerId;
          await getIt<SpriteManager>().loadGameSprites();
          await getIt<CharacterManager>().loadCharacters(playerId: event.playerId);
          getIt<SpaceArenaGame>().addAll(getIt<CharacterManager>().characters.values);
        }
      }
      if (_registered) {
        if (event is MoveEvent) {
          getIt<CharacterManager>().characters[event.playerId]?.moveTo(Vector2(event.x, event.y));
        }
      }
    });
  }
}
