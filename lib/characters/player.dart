import 'dart:math';

import 'package:flame/components.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../di/di.dart';

class Player extends MovableSpriteComponent {
  @override
  double speed = 200;
  @override
  Vector2? destination;
  @override
  double angleOffset = -pi / 2;
  @override
  int playerId;

  Player.firstPlayer(
      {double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.8, required this.playerId}) {
    sprite = getIt<SpriteManager>().playerSprite;
    this.x = x;
    this.y = y;
    width = 50;
    height = 100;
    angle = angleOffset;
    anchor = Anchor.center;
  }

  Player.secondPlayer(
      {double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.2, required this.playerId}) {
    sprite = getIt<SpriteManager>().playerSprite;
    this.x = x;
    this.y = y;
    width = 50;
    height = 100;
    angle = angleOffset;
    anchor = Anchor.center;
  }
}
