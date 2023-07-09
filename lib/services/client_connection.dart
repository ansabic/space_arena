import 'dart:convert';
import 'dart:io';

import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/coordinator/events/create_part_event/create_part_event.dart';
import 'package:space_arena/coordinator/events/damage_event/damage_event.dart';
import 'package:space_arena/coordinator/events/disconnect_player_event/disconnect_player_event.dart';
import 'package:space_arena/coordinator/events/event.dart';
import 'package:space_arena/coordinator/events/shoot_event/shoot_event.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/event_service.dart';
import 'package:space_arena/services/parts_manager.dart';

import '../characters/bullet.dart';
import '../characters/part.dart';
import '../characters/types/movable.dart';
import '../coordinator/events/move_event/move_event.dart';
import '../coordinator/events/register_event/register_event.dart';
import '../coordinator/events/start_game_event/start_game_event.dart';
import '../model/part_type.dart';
import '../space_arena_game.dart';

@lazySingleton
class ClientConnection {
  Socket? _connection;
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
            getIt<CharacterManager>().add(InitCharacters(team: event.team));
          }
          break;
        }

        /// Handle all the other events here
        if (_registered) {
          if (event is RegisterEvent) {
            addEvent(const StartGameEvent());
          } else if (event is MoveEvent) {
            (getIt<CharacterManager>().characters[event.characterId] as Movable).moveTo(Vector2(event.x, event.y));
          } else if (event is StartGameEvent) {
            //TODO Start game
            debugPrint("Started");
          } else if (event is DisconnectPlayerEvent) {
            //TODO Pause game
          } else if (event is ShootEvent) {
            getIt<SpaceArenaGame>().add(Bullet(
                damage: event.damage,
                start: Vector2(event.startX, event.startY),
                direction: Vector2(event.dirX, event.dirY),
                team: event.team));
          } else if (event is DamageEvent) {
            getIt<CharacterManager>().add(DamageCharacter(damage: event.damage, characterId: event.characterId));
          } else if(event is CreatePartEvent) {
            late final Part part;
            switch(event.type) {
              case PartType.shield:
                part  = ShieldPart(team: event.team, partSide: event.side);
                break;
              case PartType.weapon:
                part  = WeaponPart(team: event.team, partSide: event.side);
                break;
              case PartType.thruster:
                part  = ThrusterPart(team: event.team, partSide: event.side);
                break;
            }
            final from = getIt<CharacterManager>().state.characters.firstWhere((element) => element.characterId == event.from);
            getIt<PartsManager>().addPart(from: from, part: part, side: event.side);
            await from.add(part);
            getIt<CharacterManager>().add(AddCharacter(character: part));
          }
        }
      }

      ///Handle only registration events here
    });
  }
}
