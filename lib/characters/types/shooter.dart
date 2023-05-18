import 'package:flame/components.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/coordinator/events/shoot_event/shoot_event.dart';
import 'package:space_arena/model/team.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

import '../../di/di.dart';
import '../../services/client_connection.dart';
import 'character.dart';

mixin Shooter on Character {
  DateTime lastShot = DateTime.now();
  abstract int damage;

  Vector2? _target() {
    final candidate = getIt<CharacterManager>()
        .characters
        .where((element) => element.team == Team.neutral || (team != element.team))
        .reduce((a, b) =>
            a.absolutePosition.distanceTo(absolutePosition) < b.absolutePosition.distanceTo(absolutePosition) ? a : b);
    if (candidate.absolutePosition.distanceTo(absolutePosition) <= Constants.shootingDistance) {
      return candidate.absolutePosition - absolutePosition;
    }
    return null;
  }

  @override
  void update(double dt) {
    super.update(dt);
    final tar = _target();
    final now = DateTime.now();
    if (tar != null && now.difference(lastShot).inMilliseconds > Constants.shotPeriodMillis) {
      getIt<ClientConnection>().addEvent(ShootEvent(
          team: team,
          startX: absolutePosition.x,
          startY: absolutePosition.y,
          dirX: tar.x,
          dirY: tar.y,
          damage: damage));
      lastShot = now;
    }
  }
}
