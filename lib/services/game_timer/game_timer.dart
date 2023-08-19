import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:events/crystal_mine_event/random_mine_event.dart';
import 'package:events/sync_data_event/sync_data_event.dart';
import 'package:flame/components.dart' as f;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:model/mine_type.dart';
import 'package:model/price.dart';
import 'package:model/sync_data/sync_data.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../characters/bullet.dart';
import '../../characters/mine.dart';
import '../../characters/mothership.dart';
import '../../di/di.dart';
import '../../settings/bloc/settings_bloc.dart';

part 'game_timer.freezed.dart';

part 'game_timer_event.dart';

part 'game_timer_state.dart';

@lazySingleton
class GameTimer extends Bloc<GameTimerEvent, GameTimerState> {
  final SettingsBloc _settingsBloc;

  GameTimer(this._settingsBloc)
      : super(GameTimerState(status: TimerStatus.normal, seconds: _settingsBloc.state.gameDurationSeconds)) {
    on<GameTimerEvent>((event, emit) async {
      await event.map(start: (value) async {
        emit(state.copyWith(status: TimerStatus.normal));
      }, pause: (value) async {
        emit(state.copyWith(status: TimerStatus.paused));
      }, tick: (value) async {
        sync();
        if (state.status == TimerStatus.normal) {
          emit(state.copyWith(seconds: state.seconds - 1));
          if (state.seconds % _settingsBloc.state.crystalMineCoolDown == 0 &&
              getIt<SpaceArenaGame>()
                      .children
                      .firstWhereOrNull((element) => element is Mine && element.mineType == MineType.crystal) ==
                  null) {
            double? randomX;
            double? randomY;
            int maxCounter = 0;
            while (randomX == null && randomY == null || maxCounter < 300) {
              final randomizer = Random(DateTime.now().microsecondsSinceEpoch);
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) * randomizer.nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) * randomizer.nextDouble();
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
              final randomizer = Random(DateTime.now().microsecondsSinceEpoch);
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) * randomizer.nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) * randomizer.nextDouble();
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
              final randomizer = Random(DateTime.now().microsecondsSinceEpoch);
              randomX = Constants.mineSize.x / 2 +
                  (Constants.worldSizeX - Constants.mineSize.x / 2) * randomizer.nextDouble();
              randomY = Constants.mineSize.y / 2 +
                  (Constants.worldSizeY - Constants.mineSize.y / 2) * randomizer.nextDouble();
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
      if (!isClosed) {
        add(const GameTimerEvent.tick());
      }
    });
  }

  void sync({bool on = false}) {
    if (on && getIt<CharacterManager>().team == Team.player1 && state.seconds % 10 == 0) {
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
      getIt<ClientConnection>().addEvent(SyncDataEvent(
          data: SyncData(
              fighter1: fighterPlayer1 != null
                  ? FighterSync(
                      team: Team.player1,
                      angle: fighterPlayer1.angle,
                      x: fighterPlayer1.position.x,
                      y: fighterPlayer1.position.y, characterId: fighterPlayer1.characterId)
                  : null,
              mothership1: MotherShipSync(
                  team: Team.player1,
                  angle: mothershipPlayer1.angle,
                  x: mothershipPlayer1.position.x,
                  y: mothershipPlayer1.position.y, characterId: mothershipPlayer1.characterId),
              fighter2: fighterPlayer2 != null
                  ? FighterSync(
                      team: Team.player2,
                      angle: fighterPlayer2.angle,
                  characterId: fighterPlayer2.characterId,
                      x: fighterPlayer2.position.x,
                      y: fighterPlayer2.position.y)
                  : null,
              mothership2: MotherShipSync(
                  team: Team.player2,
                  angle: mothershipPlayer2.angle,
                  x: mothershipPlayer2.position.x,
                  characterId: mothershipPlayer2.characterId,
                  y: mothershipPlayer2.position.y),
              mines: getIt<CharacterManager>()
                  .state
                  .characters
                  .whereType<Mine>()
                  .map((e) => MineSync(type: e.mineType,characterId: e.characterId, x: e.position.x, y: e.position.y, usesLeft: e.currentHealth))
                  .toList(),
              bullets: getIt<SpaceArenaGame>()
                  .children
                  .whereType<Bullet>()
                  .map((e) => BulletSync(directionX: e.direction.x,directionY: e.direction.y, x: e.x, y: e.y, team: e.team))
                  .toList(),
              resources1: Price(gold: 0, crystal: 0, plasma: 0),
              resources2: Price(gold: 0, crystal: 0, plasma: 0),
              timerSeconds: getIt<GameTimer>().state.seconds)));
    }
  }
}
