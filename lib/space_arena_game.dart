import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/events/move_event/move_event.dart';
import 'package:space_arena/services/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';

import 'di/di.dart';

@lazySingleton
class SpaceArenaGame extends FlameGame with SecondaryTapDetector, HasCollisionDetection {
  final CharacterManager _characterManager;

  SpaceArenaGame(this._characterManager);

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    for (var element in _characterManager.characters.values) {
      element.update(dt);
    }
  }

  @override
  void onSecondaryTapDown(TapDownInfo info) {
    getIt<ClientConnection>().addEvent(MoveEvent(
        playerId: getIt<ClientConnection>().playerId!, x: info.eventPosition.game.x, y: info.eventPosition.game.y));
  }
}
