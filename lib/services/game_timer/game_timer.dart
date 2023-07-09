import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
        }
      });
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const GameTimerEvent.tick());
    });
  }
}
