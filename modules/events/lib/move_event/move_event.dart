import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../event.dart';
import '../event_type.dart';

part 'move_event.freezed.dart';
part 'move_event.g.dart';

@freezed
class MoveEvent with _$MoveEvent implements Event {
  const MoveEvent._();

  const factory MoveEvent({required int characterId, required double x, required double y}) = _MoveEvent;

  factory MoveEvent.fromJson(Map<String, Object?> json) => _$MoveEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.moveEvent.name}${jsonEncode(toJson())}end");
}
