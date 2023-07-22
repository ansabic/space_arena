import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/mine_type.dart';

import '../event.dart';
import '../event_type.dart';

part 'random_mine_event.freezed.dart';
part 'random_mine_event.g.dart';

@freezed
class RandomMineEvent with _$RandomMineEvent implements Event {
  const RandomMineEvent._();

  const factory RandomMineEvent({required double x, required double y, required MineType type}) = _RandomMineEvent;

  factory RandomMineEvent.fromJson(Map<String, Object?> json) => _$RandomMineEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.randomMineEvent.name}${jsonEncode(toJson())}end");
}
