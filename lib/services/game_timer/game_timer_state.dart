part of 'game_timer.dart';

@freezed
class GameTimerState with _$GameTimerState {
  const factory GameTimerState({
    required int seconds,
    required TimerStatus status
}) = _GameTimerState;
}

enum TimerStatus {
  normal,
  paused
}
