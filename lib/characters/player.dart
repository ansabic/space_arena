import 'dart:math';

import 'package:flame/components.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/characters/types/shooter.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/model/fighter_states.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../di/di.dart';

class Player extends MovableSpriteComponent with Shooter {
  @override
  double speed = 200;
  @override
  Vector2? destination;
  @override
  double angleOffset = -pi / 2;
  @override
  double rotationSpeed = 10;
  @override
  int? playerId;
  @override
  SpriteAnimation? damageAnimation;

  Player.firstPlayer({double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.8}) {
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
    anchor = Anchor.center;
    playerId = 0;
    damageAnimation = getIt<SpriteManager>().fighterDamaged;
  }

  Player.secondPlayer({double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.2}) {
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
    anchor = Anchor.center;
    playerId = 1;
  }
}
