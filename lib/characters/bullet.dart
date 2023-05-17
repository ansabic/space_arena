import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/sprite_manager.dart';
import 'package:space_arena/space_arena_game.dart';

import '../model/team.dart';

class Bullet extends SpriteComponent with CollisionCallbacks {
  final double speed = Constants.bulletSpeed;
  final Vector2 direction;
  final Team team;
  final int damage;

  Bullet({required Vector2 start, required this.direction, required this.team, required this.damage}) {
    sprite = getIt<SpriteManager>().bulletSprite;
    angle = angleTo(direction) + pi / 2;
    anchor = Anchor.center;
    x = start.x;
    y = start.y;
    width = 20;
    height = 20;
  }

  @override
  Future<void> onLoad() async {
    add(hitBox);
    return super.onLoad();
  }

  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, -0.5));

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);
    if (other is TeamCharacter && other.team != team && other is! Bullet) {
      getIt<SpaceArenaGame>().remove(this);
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    final diff = direction;
    position += diff.normalized() * speed * dt;
    if (position.y < 0 || position.y > Constants.worldSizeY || position.x < 0 || position.x > Constants.worldSizeX) {
      getIt<SpaceArenaGame>().remove(this);
    }
  }
}
