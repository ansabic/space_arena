import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../event.dart';
import '../event_type.dart';

part 'start_game_event.freezed.dart';
part 'start_game_event.g.dart';

@freezed
class StartGameEvent with _$StartGameEvent implements Event {
  const StartGameEvent._();

  const factory StartGameEvent() = _StartGameEvent;

  factory StartGameEvent.fromJson(Map<String, Object?> json) => _$StartGameEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.startGameEvent.name}${jsonEncode(toJson())}end");
}
