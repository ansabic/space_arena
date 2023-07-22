import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../event.dart';
import '../event_type.dart';

part 'pause_game_event.freezed.dart';
part 'pause_game_event.g.dart';

@freezed
class PauseGameEvent with _$PauseGameEvent implements Event {
  const PauseGameEvent._();

  const factory PauseGameEvent() = _PauseGameEvent;

  factory PauseGameEvent.fromJson(Map<String, Object?> json) => _$PauseGameEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.pauseGameEvent.name}${jsonEncode(toJson())}end");
}
