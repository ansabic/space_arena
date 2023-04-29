import 'dart:math';

import 'package:flame/components.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../di/di.dart';

class Player extends MovableSpriteComponent {
  @override
  double speed = 200;
  @override
  Vector2? destination;
  @override
  double angleOffset = -pi / 2;

  Player.startingPlayer({required double x, required double y}) {
    sprite = getIt<SpriteManager>().playerSprite;
    this.x = x;
    this.y = y;
    width = 50;
    height = 100;
    angle = angleOffset;
    anchor = Anchor.center;
  }
}
