import 'package:flame/components.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/coordinator/events/shoot_event/shoot_event.dart';
import 'package:space_arena/services/character_manager.dart';

import '../../di/di.dart';
import '../../services/client_connection.dart';

mixin Shooter on MovableSpriteComponent {
  DateTime lastShot = DateTime.now();

  Vector2? target() {
    final candidate = getIt<CharacterManager>()
        .characters
        .where((element) => element.playerId != null && (element.playerId! % 2) != (playerId! % 2))
        .reduce((a, b) => a.position.distanceTo(position) < b.position.distanceTo(position) ? a : b);
    if (candidate.position.distanceTo(position) <= Constants.shootingDistance) {
      return candidate.position - position;
    }
    return null;
  }

  @override
  void update(double dt) {
    super.update(dt);
    final tar = target();
    final now = DateTime.now();
    if (tar != null && now.difference(lastShot).inMilliseconds > Constants.shotPeriodMillis) {
      getIt<ClientConnection>()
          .addEvent(ShootEvent(playerId: playerId!, startX: position.x, startY: position.y, dirX: tar.x, dirY: tar.y));
      lastShot = now;
    }
  }
}
