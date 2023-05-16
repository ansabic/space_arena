import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/sprite_manager.dart';
import 'package:space_arena/space_arena_game.dart';

class Bullet extends SpriteComponent with CollisionCallbacks {
  final SpriteComponent creator;
  final double speed = Constants.bulletSpeed;
  final Vector2 direction;
  final gameSize = getIt<SpaceArenaGame>().size;

  Bullet({required Vector2 start, required this.direction, required this.creator}) {
    sprite = getIt<SpriteManager>().bulletSprite;
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

  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, -0.5))
    ..renderShape = true
    ..paint = (Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke);

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);
    if (other != creator && other is! Bullet) {
      getIt<SpaceArenaGame>().remove(this);
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    final diff = direction;
    position += diff.normalized() * speed * dt;
    if (position.y < 0 || position.y > gameSize.y || position.x < 0 || position.x > gameSize.x) {
      getIt<SpaceArenaGame>().remove(this);
    }
  }
}
