import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_arena/model/team.dart';

import '../event.dart';
import '../event_type.dart';

part 'register_event.freezed.dart';
part 'register_event.g.dart';

@freezed
class RegisterEvent with _$RegisterEvent implements Event {
  const RegisterEvent._();

  const factory RegisterEvent({required Team team}) = _RegisterEvent;

  factory RegisterEvent.fromJson(Map<String, Object?> json) => _$RegisterEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.registerEvent.name}${jsonEncode(toJson())}end");
}
