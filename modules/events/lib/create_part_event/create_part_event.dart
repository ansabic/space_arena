import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/part_side.dart';
import 'package:model/part_type.dart';
import 'package:model/team.dart';

import '../event.dart';
import '../event_type.dart';

part 'create_part_event.freezed.dart';
part 'create_part_event.g.dart';

@freezed
class CreatePartEvent with _$CreatePartEvent implements Event {
  const CreatePartEvent._();

  const factory CreatePartEvent(
      {required Team team, required int from, required PartSide side, required PartType type}) = _CreatePartEvent;

  factory CreatePartEvent.fromJson(Map<String, Object?> json) => _$CreatePartEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.createPartEvent.name}${jsonEncode(toJson())}end");
}
