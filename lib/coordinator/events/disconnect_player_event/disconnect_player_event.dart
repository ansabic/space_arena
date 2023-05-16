import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_arena/coordinator/events/event_type.dart';

import '../event.dart';

part 'disconnect_player_event.freezed.dart';
part 'disconnect_player_event.g.dart';

@freezed
class DisconnectPlayerEvent with _$DisconnectPlayerEvent implements Event {
  const DisconnectPlayerEvent._();

  const factory DisconnectPlayerEvent({required int playerId}) = _DisconnectPlayerEvent;

  factory DisconnectPlayerEvent.fromJson(Map<String, Object?> json) => _$DisconnectPlayerEventFromJson(json);

  @override
  List<int> getBytes() => utf8.encode("${EventType.disconnectPlayerEvent.name}${jsonEncode(toJson())}");
}
