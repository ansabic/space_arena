import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/coordinator/events/damage_event/damage_event.dart';
import 'package:space_arena/model/fighter_states.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../constants/constants.dart';
import '../../di/di.dart';
import '../bullet.dart';
import 'character.dart';

abstract class MovableSpriteComponent extends SpriteAnimationGroupComponent<MovableState>
    with CollisionCallbacks, TeamCharacter {
  @override
  Future<void> onCollision(Set<Vector2> intersectionPoints, PositionComponent other) async {
    super.onCollision(intersectionPoints, other);
    if (other is Bullet && other.team != team) {
      if (thisPlayer()) {
        getIt<SpaceArenaGame>().camera.shake(intensity: 3);
        if (this is HasHealth && this is Character) {
          getIt<ClientConnection>()
              .addEvent(DamageEvent(characterId: (this as Character).characterId, damage: other.damage));
        }
      }
      if (current != MovableState.damaged) {
        current = MovableState.damaged;
        animation?.onComplete = () {
          current = MovableState.idle;
          animations?[MovableState.damaged]?.reset();
        };
      }
    }
  }

  @override
  Future<void> onLoad() async {
    add(hitBox);
    current = MovableState.idle;
    return super.onLoad();
  }

  abstract double rotationSpeed;
  abstract double speed;
  abstract double angleOffset;
  abstract Vector2? destination;

  bool thisPlayer() => team == getIt<CharacterManager>().team;

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
    ///Native rotation is not good so i implemented it by myself
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
      final newPosition = position + diff.normalized() * speed * dt;
      if (newPosition.x > 0 &&
          newPosition.y > 0 &&
          newPosition.x < Constants.worldSizeX &&
          newPosition.y < Constants.worldSizeY) {
        position = newPosition;
      }
      if (current != MovableState.damaged) {
        current = MovableState.moving;
      }
      if (diff.length < Constants.proximityDistance) {
        destination = null;
        if (current != MovableState.damaged) {
          current = MovableState.idle;
        }
      }
    }
  }
}
