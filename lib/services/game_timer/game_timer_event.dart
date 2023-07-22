part of 'game_timer.dart';

@freezed
class GameTimerEvent with _$GameTimerEvent {
  const factory GameTimerEvent.start() = _Start;

  const factory GameTimerEvent.pause() = _Pause;

  const factory GameTimerEvent.done({required Team winner}) = _Done;

  const factory GameTimerEvent.tick() = _Tick;

  const factory GameTimerEvent.playerOneFighterDead() = _PlayerOneFighterDead;

  const factory GameTimerEvent.playerTwoFighterDead() = _PlayerTwoFighterDead;
}
