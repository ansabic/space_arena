import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../event.dart';
import '../event_type.dart';

part 'damage_event.freezed.dart';
part 'damage_event.g.dart';

@freezed
class DamageEvent with _$DamageEvent implements Event {
  const DamageEvent._();

  const factory DamageEvent({required int characterId, required int damage}) = _DamageEvent;

  factory DamageEvent.fromJson(Map<String, Object?> json) => _$DamageEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.damageEvent.name}${jsonEncode(toJson())}end");
}
