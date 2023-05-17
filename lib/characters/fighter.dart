import 'dart:math';

import 'package:flame/components.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/characters/types/shooter.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/model/fighter_states.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../di/di.dart';
import '../model/team.dart';

class Fighter extends MovableSpriteComponent with Character, Shooter, HasHealth {
  @override
  double speed = 200;
  @override
  Vector2? destination;
  @override
  double angleOffset = -pi / 2;
  @override
  double rotationSpeed = 10;
  @override
  Team team;
  @override
  String name = "Fighter";
  @override
  int currentHealth = 10;

  @override
  int get maxHealth => 10;
  @override
  int damage = 1;
  @override
  bool picked = false;

  Fighter.firstPlayer(
      {this.team = Team.player1, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.8}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().fighterIdle,
      MovableState.damaged: getIt<SpriteManager>().fighterDamaged,
      MovableState.moving: getIt<SpriteManager>().fighterMoving
    };
    this.x = x;
    this.y = y;
    width = 50;
    height = 100;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
    picked = true;
  }

  Fighter.secondPlayer(
      {this.team = Team.player2, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.2}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().corvetteIdle,
      MovableState.damaged: getIt<SpriteManager>().corvetteDamaged,
      MovableState.moving: getIt<SpriteManager>().corvetteMove
    };

    this.x = x;
    this.y = y;
    width = 50;
    height = 100;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
  }
}
