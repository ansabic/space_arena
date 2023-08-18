import 'dart:math';

import 'package:flame/components.dart';
import 'package:model/fighter_states.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/movable.dart';
import 'package:space_arena/services/game_timer/game_timer.dart';

import '../constants/constants.dart';
import '../di/di.dart';
import '../services/player/player.dart';
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
  late String name;
  @override
  int currentHealth = 25;

  @override
  int get maxHealth => 25;
  @override
  bool picked = false;

  @override
  onRemove() {
    super.onRemove();
    if(currentHealth > 0) {
      return;
    }
    getIt<GameTimer>().add(
        GameTimerEvent.done(winner: Team.values.firstWhere((element) => element != Team.neutral && element != team)));
    Player.playShipExplosion();
  }

  Mothership.firstPlayer(
      {this.team = Team.player1, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.8 + 50}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().mothershipIdle,
      MovableState.damaged: getIt<SpriteManager>().mothershipDamaged,
      MovableState.moving: getIt<SpriteManager>().mothershipMove
    };
    position = Vector2(x, y);
    size = Constants.partSize;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
    name = "Mothership 1";
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
    name = "Mothership 2";
  }
}
