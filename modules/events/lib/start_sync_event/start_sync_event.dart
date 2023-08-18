import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/team.dart';

import '../event.dart';
import '../event_type.dart';

part 'start_sync_event.freezed.dart';
part 'start_sync_event.g.dart';

@freezed
class StartSyncEvent with _$StartSyncEvent implements Event {
  const StartSyncEvent._();

  const factory StartSyncEvent({
    required Team disconnected
}) = _StartSyncEvent;

  factory StartSyncEvent.fromJson(Map<String, Object?> json) => _$StartSyncEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.startSyncEvent.name}${jsonEncode(toJson())}end");
}