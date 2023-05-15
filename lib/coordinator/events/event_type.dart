import 'package:space_arena/coordinator/events/disconnect_player_event/disconnect_player_event.dart';
import 'package:space_arena/coordinator/events/register_event/register_event.dart';
import 'package:space_arena/coordinator/events/start_game_event/start_game_event.dart';

import 'event.dart';
import 'move_event/move_event.dart';

enum EventType {
  moveEvent(name: "move_event", fromJson: MoveEvent.fromJson),
  registerEvent(name: "register_event", fromJson: RegisterEvent.fromJson),
  startGameEvent(name: "start_game_event", fromJson: StartGameEvent.fromJson),
  disconnectPlayerEvent(name: "disconnect_player_event", fromJson: DisconnectPlayerEvent.fromJson);

  final String name;
  final Event Function(Map<String, dynamic>) fromJson;

  const EventType({required this.name, required this.fromJson});
}
