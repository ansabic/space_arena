import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';

import '../constants/constants.dart';
import '../di/di.dart';
import '../model/fighter_states.dart';
import '../services/sprite_manager.dart';

class Mothership extends MovableSpriteComponent {
  @override
  double angleOffset = -pi / 2;

  @override
  Vector2? destination;

  @override
  int? playerId;

  @override
  double rotationSpeed = 1;

  @override
  double speed = 15;

  @override
  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, 0))
    ..renderShape = true
    ..paint = (Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke);

  Mothership.firstPlayer({double x = Constants.worldSizeX / 2 - 50, double y = Constants.worldSizeY * 0.8}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().mothershipIdle,
      MovableState.damaged: getIt<SpriteManager>().mothershipDamaged,
      MovableState.moving: getIt<SpriteManager>().mothershipMove
    };
    this.x = x;
    this.y = y;
    width = 50;
    height = 50;
    nativeAngle = angleOffset;

    angle = angleOffset;
    anchor = Anchor.center;
    playerId = 2;
  }

  Mothership.secondPlayer({double x = Constants.worldSizeX / 2 - 50, double y = Constants.worldSizeY * 0.2}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().mothershipIdle,
      MovableState.damaged: getIt<SpriteManager>().mothershipDamaged,
      MovableState.moving: getIt<SpriteManager>().mothershipMove
    };

    this.x = x;
    this.y = y;
    width = 50;
    height = 50;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
    playerId = 3;
  }
}
