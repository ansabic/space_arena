import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/sync_data/sync_data.dart';

import '../event.dart';
import '../event_type.dart';

part 'sync_data_event.freezed.dart';

part 'sync_data_event.g.dart';

@freezed
class SyncDataEvent with _$SyncDataEvent implements Event {
  const SyncDataEvent._();

  factory SyncDataEvent({required SyncData data}) = _SyncDataEvent;

  factory SyncDataEvent.fromJson(Map<String, Object?> json) => _$SyncDataEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.syncDataEvent.name}${jsonEncode({"data": data.toJson()})}end");
}
