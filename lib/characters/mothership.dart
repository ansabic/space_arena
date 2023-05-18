import 'dart:math';

import 'package:flame/components.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/movable.dart';

import '../constants/constants.dart';
import '../di/di.dart';
import '../model/fighter_states.dart';
import '../model/team.dart';
import '../services/sprite_manager.dart';

class Mothership extends Movable with Character, HasHealth {
  @override
  double angleOffset = -pi / 2;
  @override
  Vector2? destination;
  @override
  Team team;
  @override
  double rotationSpeed = 1;
  @override
  double speed = 15;
  @override
  String name = "Mothership";
  @override
  int currentHealth = 25;

  @override
  int get maxHealth => 25;
  @override
  bool picked = false;

  Mothership.firstPlayer(
      {this.team = Team.player1, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.8 + 50}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().mothershipIdle,
      MovableState.damaged: getIt<SpriteManager>().mothershipDamaged,
      MovableState.moving: getIt<SpriteManager>().mothershipMove
    };
    this.x = x;
    this.y = y;
    size = Constants.partSize;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
  }

  Mothership.secondPlayer(
      {this.team = Team.player2, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.2 - 50}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().mothershipIdle,
      MovableState.damaged: getIt<SpriteManager>().mothershipDamaged,
      MovableState.moving: getIt<SpriteManager>().mothershipMove
    };

    this.x = x;
    this.y = y;
    size = Constants.partSize;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
  }
}
