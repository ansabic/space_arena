import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

abstract class MovableSpriteComponent extends SpriteComponent with CollisionCallbacks {
  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);
    debugPrint("Collided!");
  }

  @override
  Future<void> onLoad() async {
    add(hitBox);
    return super.onLoad();
  }

  abstract double rotationSpeed;
  abstract double speed;
  abstract double angleOffset;
  abstract Vector2? destination;
  abstract int playerId;

  bool isInTheSameTeamAs({required MovableSpriteComponent other}) {
    return playerId == other.playerId;
  }

  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, -0.5))
    ..renderShape = true
    ..paint = (Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke);

  void moveTo(Vector2 destination) {
    this.destination = destination;
  }

  @override
  void update(double dt) {
    if (destination != null) {
      final dir = Vector2(1, 0)..rotate(angle);
      final diff = destination! - position;
      final dot = dir.x * diff.x + dir.y * diff.y;
      final det = dir.x * diff.y - dir.y * diff.x;
      final ang = atan2(det, dot);
      if (ang.abs() >= 0.01) {
        angle += rotationSpeed * dt * ang;
      }
    }
    super.update(dt);
  }

  void updatePosition(double dt) {
    if (destination != null) {
      final diff = destination! - position;
      position += diff.normalized() * speed * dt;

      if (diff.length < Constants.proximityDistance) {
        destination = null;
      }
    }
  }
}
