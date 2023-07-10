import 'package:space_arena/coordinator/events/create_part_event/create_part_event.dart';
import 'package:space_arena/coordinator/events/crystal_mine_event/random_mine_event.dart';
import 'package:space_arena/coordinator/events/disconnect_player_event/disconnect_player_event.dart';
import 'package:space_arena/coordinator/events/pause_game_event/pause_game_event.dart';
import 'package:space_arena/coordinator/events/register_event/register_event.dart';
import 'package:space_arena/coordinator/events/resume_game_event/resume_game_event.dart';
import 'package:space_arena/coordinator/events/shoot_event/shoot_event.dart';
import 'package:space_arena/coordinator/events/start_game_event/start_game_event.dart';

import 'damage_event/damage_event.dart';
import 'event.dart';
import 'move_event/move_event.dart';

enum EventType {
  moveEvent(name: "move_event", fromJson: MoveEvent.fromJson),
  createPartEvent(name: "create_part_event", fromJson: CreatePartEvent.fromJson),
  registerEvent(name: "register_event", fromJson: RegisterEvent.fromJson),
  startGameEvent(name: "start_game_event", fromJson: StartGameEvent.fromJson),
  disconnectPlayerEvent(name: "disconnect_player_event", fromJson: DisconnectPlayerEvent.fromJson),
  shootEvent(name: "shoot_event", fromJson: ShootEvent.fromJson),
  resumeGameEvent(name: "resume_game_event", fromJson: ResumeGameEvent.fromJson),
  pauseGameEvent(name: "pause_game_event", fromJson: PauseGameEvent.fromJson),
  randomMineEvent(name: "crystalMineEvent", fromJson: RandomMineEvent.fromJson),
  damageEvent(name: "damage_event", fromJson: DamageEvent.fromJson);

  final String name;
  final Event Function(Map<String, dynamic>) fromJson;

  const EventType({required this.name, required this.fromJson});
}
