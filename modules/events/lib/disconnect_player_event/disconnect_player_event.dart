import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/team.dart';

import '../event.dart';
import '../event_type.dart';

part 'disconnect_player_event.freezed.dart';
part 'disconnect_player_event.g.dart';

@freezed
class DisconnectPlayerEvent with _$DisconnectPlayerEvent implements Event {
  const DisconnectPlayerEvent._();

  const factory DisconnectPlayerEvent({required Team team}) = _DisconnectPlayerEvent;

  factory DisconnectPlayerEvent.fromJson(Map<String, Object?> json) => _$DisconnectPlayerEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.disconnectPlayerEvent.name}${jsonEncode(toJson())}end");
}
