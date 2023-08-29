import 'package:events/start_sync_event/start_sync_event.dart';
import 'package:events/sync_data_event/sync_data_event.dart';

import '../create_part_event/create_part_event.dart';
import '../crystal_mine_event/random_mine_event.dart';
import '../disconnect_player_event/disconnect_player_event.dart';
import '../move_event/move_event.dart';
import '../pause_game_event/pause_game_event.dart';
import '../register_event/register_event.dart';
import '../resume_game_event/resume_game_event.dart';
import '../shoot_event/shoot_event.dart';
import '../start_game_event/start_game_event.dart';
import 'event.dart';

enum EventType {
  moveEvent(name: "move_event", fromJson: MoveEvent.fromJson),
  createPartEvent(name: "create_part_event", fromJson: CreatePartEvent.fromJson),
  registerEvent(name: "register_event", fromJson: RegisterEvent.fromJson),
  startGameEvent(name: "start_game_event", fromJson: StartGameEvent.fromJson),
  startSyncEvent(name: "start_sync_event", fromJson: StartSyncEvent.fromJson),
  syncDataEvent(name: "sync_data_event", fromJson: SyncDataEvent.fromJson),
  disconnectPlayerEvent(name: "disconnect_player_event", fromJson: DisconnectPlayerEvent.fromJson),
  shootEvent(name: "shoot_event", fromJson: ShootEvent.fromJson),
  resumeGameEvent(name: "resume_game_event", fromJson: ResumeGameEvent.fromJson),
  pauseGameEvent(name: "pause_game_event", fromJson: PauseGameEvent.fromJson),
  randomMineEvent(name: "crystalMineEvent", fromJson: RandomMineEvent.fromJson);

  final String name;
  final Event Function(Map<String, dynamic>) fromJson;

  const EventType({required this.name, required this.fromJson});
}
