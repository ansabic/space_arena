import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:events/create_part_event/create_part_event.dart';
import 'package:events/crystal_mine_event/random_mine_event.dart';
import 'package:events/disconnect_player_event/disconnect_player_event.dart';
import 'package:events/event.dart';
import 'package:events/event_service.dart';
import 'package:events/move_event/move_event.dart';
import 'package:events/pause_game_event/pause_game_event.dart';
import 'package:events/register_event/register_event.dart';
import 'package:events/resume_game_event/resume_game_event.dart';
import 'package:events/shoot_event/shoot_event.dart';
import 'package:events/start_game_event/start_game_event.dart';
import 'package:events/start_sync_event/start_sync_event.dart';
import 'package:events/sync_data_event/sync_data_event.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:model/part_type.dart';
import 'package:model/price.dart';
import 'package:model/sync_data/sync_data.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/characters/mine.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/main.dart';
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart';
import 'package:space_arena/services/bank/bank_bloc.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/game_timer/game_timer.dart';
import 'package:space_arena/services/parts_manager.dart';
import 'package:space_arena/services/player/player.dart';

import '../characters/bullet.dart';
import '../characters/part.dart';
import '../characters/types/movable.dart';
import '../space_arena_game.dart';

@lazySingleton
class ClientConnection {
  Socket? _connection;
  final eventService = getIt<EventService>();
  final eventMap = {};
  String? ipAddress;

  Future<bool> connect({required String ipAddress}) async {
    if (_connection != null) {
      return false;
    }
    _connection = await Socket.connect(ipAddress, 33333);
    _subscribe();
    this.ipAddress = ipAddress;
    return _connection != null;
  }

  Future<void> addEvent(Event event) async {
    _connection?.add(event.getBytes());
  }

  void _subscribe() {
    _connection?.listen((bytes) async {
      final events = eventService.getEvents(utf8Message: utf8.decode(bytes));
      for (var event in events) {
        if (event is RegisterEvent) {
          getIt<CharacterManager>().add(InitCharacters(team: event.team));
        } else if (event is MoveEvent) {
          (getIt<CharacterManager>().characters.firstWhere((element) => element.name == event.name) as Movable)
              .moveTo(Vector2(event.x, event.y));
        } else if (event is StartGameEvent) {
          if (globalKey.currentContext == null) {
            throw Exception("No context attached!");
          }
          Navigator.pushNamedAndRemoveUntil(globalKey.currentContext!, Constants.routes.game, (_) => true);
        } else if (event is DisconnectPlayerEvent) {
          getIt<GameTimer>().add(const GameTimerEvent.pause());
          getIt<OverlayCubit>().waitAnotherPlayer();
        } else if (event is ShootEvent) {
          getIt<SpaceArenaGame>().add(Bullet(
              damage: event.damage,
              start: Vector2(event.startX, event.startY),
              direction: Vector2(event.dirX, event.dirY),
              team: event.team));
          Player.playLaser();
        } else if (event is CreatePartEvent) {
          late final Part part;
          switch (event.type) {
            case PartType.shield:
              part = ShieldPart(team: event.team, partSide: event.side);
              break;
            case PartType.weapon:
              part = WeaponPart(team: event.team, partSide: event.side);
              break;
            case PartType.thruster:
              part = ThrusterPart(team: event.team, partSide: event.side);
              break;
          }
          final from =
              getIt<CharacterManager>().state.characters.firstWhere((element) => element.characterId == event.from);
          await part.addToParent(from);
          getIt<CharacterManager>().add(AddCharacter(character: part));
          if (event.team == getIt<CharacterManager>().team) {
            getIt<PartsManager>().addPart(from: from, part: part, side: event.side);
            getIt<BankBloc>().add(BuyPart(part: event.type));
          }
        } else if (event is PauseGameEvent) {
          getIt<SpaceArenaGame>().pauseEngine();
          getIt<GameTimer>().add(const GameTimerEvent.pause());
        } else if (event is ResumeGameEvent) {
          getIt<SpaceArenaGame>().resumeEngine();
          getIt<GameTimer>().add(const GameTimerEvent.start());
        } else if (event is RandomMineEvent) {
          getIt<CharacterManager>()
              .add(AddCharacter(character: Mine(mineType: event.type)..position = Vector2(event.x, event.y)));
        } else if (event is StartSyncEvent) {
          if (getIt<CharacterManager>().team != event.disconnected) {
            final fighterPlayer1 = getIt<CharacterManager>()
                .state
                .characters
                .firstWhereOrNull((element) => element is Fighter && element.team == Team.player1);
            final fighterPlayer2 = getIt<CharacterManager>()
                .state
                .characters
                .firstWhereOrNull((element) => element is Fighter && element.team == Team.player2);
            final mothershipPlayer1 = getIt<CharacterManager>()
                .state
                .characters
                .firstWhere((element) => element is Mothership && element.team == Team.player1);
            final mothershipPlayer2 = getIt<CharacterManager>()
                .state
                .characters
                .firstWhere((element) => element is Mothership && element.team == Team.player2);
            addEvent(SyncDataEvent(
                data: SyncData(
                    fighter1: fighterPlayer1 != null
                        ? FighterSync(
                            characterId: fighterPlayer1.characterId,
                            destinationX: (fighterPlayer1 as Movable).destination?.x,
                            destinationY: (fighterPlayer1 as Movable).destination?.y,
                            team: Team.player1,
                            angle: fighterPlayer1.angle,
                            x: fighterPlayer1.position.x,
                            y: fighterPlayer1.position.y)
                        : null,
                    mothership1: MotherShipSync(
                        team: Team.player1,
                        characterId: mothershipPlayer1.characterId,
                        destinationX: (mothershipPlayer1 as Movable).destination?.x,
                        destinationY: (mothershipPlayer1 as Movable).destination?.y,
                        angle: mothershipPlayer1.angle,
                        x: mothershipPlayer1.position.x,
                        y: mothershipPlayer1.position.y),
                    fighter2: fighterPlayer2 != null
                        ? FighterSync(
                            characterId: fighterPlayer2.characterId,
                            destinationX: (fighterPlayer2 as Movable).destination?.x,
                            destinationY: (fighterPlayer2 as Movable).destination?.y,
                            team: Team.player2,
                            angle: fighterPlayer2.angle,
                            x: fighterPlayer2.position.x,
                            y: fighterPlayer2.position.y)
                        : null,
                    mothership2: MotherShipSync(
                        team: Team.player2,
                        characterId: mothershipPlayer2.characterId,
                        angle: mothershipPlayer2.angle,
                        destinationX: (mothershipPlayer2 as Movable).destination?.x,
                        destinationY: (mothershipPlayer2 as Movable).destination?.y,
                        x: mothershipPlayer2.position.x,
                        y: mothershipPlayer2.position.y),
                    mines: getIt<CharacterManager>()
                        .state
                        .characters
                        .whereType<Mine>()
                        .map((e) => MineSync(
                            type: e.mineType,
                            characterId: e.characterId,
                            x: e.position.x,
                            y: e.position.y,
                            usesLeft: e.currentHealth))
                        .toList(),
                    bullets: getIt<SpaceArenaGame>()
                        .children
                        .whereType<Bullet>()
                        .map((e) => BulletSync(
                            directionX: e.direction.x, directionY: e.direction.y, x: e.x, y: e.y, team: e.team))
                        .toList(),
                    resources1: Price(gold: 0, crystal: 0, plasma: 0),
                    resources2: Price(gold: 0, crystal: 0, plasma: 0),
                    timerSeconds: getIt<GameTimer>().state.seconds)));
          }
        } else if (event is SyncDataEvent && getIt<CharacterManager>().team == Team.player2) {
          getIt<CharacterManager>().add(SyncCharacters(data: event.data));
        }
      }
    });
  }
}
