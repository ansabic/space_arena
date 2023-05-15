import 'package:space_arena/coordinator/events/register_event/register_event.dart';

import 'event.dart';
import 'move_event/move_event.dart';

enum EventType {
  moveEvent(name: "move_event", fromJson: MoveEvent.fromJson),
  registerEvent(name: "register_event", fromJson: RegisterEvent.fromJson);

  final String name;
  final Event Function(Map<String, dynamic>) fromJson;

  const EventType({required this.name, required this.fromJson});
}
