import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_arena/coordinator/events/event.dart';

import '../event_type.dart';

part 'resume_game_event.freezed.dart';

part 'resume_game_event.g.dart';

@freezed
class ResumeGameEvent with _$ResumeGameEvent implements Event {
  const ResumeGameEvent._();

  const factory ResumeGameEvent() = _ResumeGameEvent;

  factory ResumeGameEvent.fromJson(Map<String, Object?> json) => _$ResumeGameEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.resumeGameEvent.name}${jsonEncode(toJson())}end");
}
