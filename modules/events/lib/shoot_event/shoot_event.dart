import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/team.dart';

import '../event.dart';
import '../event_type.dart';

part 'shoot_event.freezed.dart';
part 'shoot_event.g.dart';

@freezed
class ShootEvent with _$ShootEvent implements Event {
  const ShootEvent._();

  const factory ShootEvent(
      {required int damage,
      required Team team,
      required double startX,
      required double startY,
      required double dirX,
      required double dirY}) = _ShootEvent;

  factory ShootEvent.fromJson(Map<String, Object?> json) => _$ShootEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.shootEvent.name}${jsonEncode(toJson())}end");
}
