import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:events/crystal_mine_event/random_mine_event.dart';
import 'package:flame/components.dart' as f;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:model/mine_type.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../characters/mine.dart';
import '../../di/di.dart';

part 'game_timer.freezed.dart';
part 'game_timer_event.dart';
part 'game_timer_state.dart';

@lazySingleton
class GameTimer extends Bloc<GameTimerEvent, GameTimerState> {
  GameTimer() : super(const GameTimerState(status: TimerStatus.normal, seconds: 600)) {
    on<GameTimerEvent>((event, emit) async {
      await event.map(start: (value) async {
        emit(state.copyWith(status: TimerStatus.normal));
      }, pause: (value) async {
        emit(state.copyWith(status: TimerStatus.paused));
      }, tick: (value) async {
        if (state.status == TimerStatus.normal) {
          emit(state.copyWith(seconds: state.seconds - 1));
          if (state.seconds % Constants.crystalMineGeneratePeriod == 0 &&
              getIt<SpaceArenaGame>()
                      .children
                      .firstWhereOrNull((element) => element is Mine && element.mineType == MineType.crystal) ==
                  null) {
            double? randomX;
            double? randomY;
            int maxCounter = 0;
            while (randomX == null && randomY == null || maxCounter < 300) {
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              if (getIt<SpaceArenaGame>().children.whereType<Mine>().firstWhereOrNull(
                      (element) => f.Vector2(randomX!, randomY!).distanceTo(element.position) < Constants.mineSize.x) !=
                  null) {
                randomY = null;
                randomX = null;
              }
              maxCounter++;
            }
            getIt<ClientConnection>().addEvent(RandomMineEvent(x: randomX!, y: randomY!, type: MineType.crystal));
          }
          if (state.seconds % Constants.goldMineGeneratePeriod == 0) {
            double? randomX;
            double? randomY;
            int maxCounter = 0;
            while (randomX == null && randomY == null || maxCounter < 300) {
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              if (getIt<SpaceArenaGame>().children.whereType<Mine>().firstWhereOrNull(
                      (element) => f.Vector2(randomX!, randomY!).distanceTo(element.position) < Constants.mineSize.x) !=
                  null) {
                randomY = null;
                randomX = null;
              }
              maxCounter++;
            }
            getIt<ClientConnection>().addEvent(RandomMineEvent(x: randomX!, y: randomY!, type: MineType.gold));
          }
          if (state.seconds % Constants.plasmaMineGeneratePeriod == 0) {
            double? randomX;
            double? randomY;
            int maxCounter = 0;
            while (randomX == null && randomY == null || maxCounter < 300) {
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) *
                      Random(DateTime.now().microsecondsSinceEpoch).nextDouble();
              if (getIt<SpaceArenaGame>().children.whereType<Mine>().firstWhereOrNull(
                      (element) => f.Vector2(randomX!, randomY!).distanceTo(element.position) < Constants.mineSize.x) !=
                  null) {
                randomY = null;
                randomX = null;
              }
              maxCounter++;
            }
            getIt<ClientConnection>().addEvent(RandomMineEvent(x: randomX!, y: randomY!, type: MineType.plasma));
          }

          if (state.playerOneFighterDeath != null &&
              state.playerOneFighterDeath! - state.seconds >= Constants.respawnTime) {
            getIt<CharacterManager>().add(AddCharacter(character: Fighter.firstPlayer()));
            emit(state.copyWith(playerOneFighterDeath: null));
          }
          if (state.playerTwoFighterDeath != null &&
              state.playerTwoFighterDeath! - state.seconds >= Constants.respawnTime) {
            getIt<CharacterManager>().add(AddCharacter(character: Fighter.secondPlayer()));
            emit(state.copyWith(playerTwoFighterDeath: null));
          }
        }
      }, playerOneFighterDead: (_PlayerOneFighterDead value) {
        emit(state.copyWith(playerOneFighterDeath: state.seconds));
      }, playerTwoFighterDead: (_PlayerTwoFighterDead value) {
        emit(state.copyWith(playerTwoFighterDeath: state.seconds));
      }, done: (_Done value) {
        getIt<SpaceArenaGame>().pauseEngine();
        emit(state.copyWith(status: TimerStatus.done, winner: value.winner));
      });
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const GameTimerEvent.tick());
    });
  }
}
