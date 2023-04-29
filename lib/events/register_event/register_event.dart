import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../event.dart';

part 'register_event.freezed.dart';
part 'register_event.g.dart';

@freezed
class RegisterEvent with _$RegisterEvent implements Event {
  const RegisterEvent._();

  const factory RegisterEvent({required int playerId}) = _RegisterEvent;

  factory RegisterEvent.fromJson(Map<String, Object?> json) => _$RegisterEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("register_event${jsonEncode(toJson())}");
}
