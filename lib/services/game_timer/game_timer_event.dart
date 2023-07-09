part of 'game_timer.dart';

@freezed
class GameTimerEvent with _$GameTimerEvent {
  const factory GameTimerEvent.start() = _Start;
  const factory GameTimerEvent.pause() = _Pause;
  const factory GameTimerEvent.tick() = _Tick;
}
