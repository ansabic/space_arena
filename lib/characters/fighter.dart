import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:model/fighter_states.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/movable.dart';
import 'package:space_arena/characters/types/shooter.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/game_timer/game_timer.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../di/di.dart';
import '../services/character_manager/character_event.dart';
import '../services/player/player.dart';

class Fighter extends Movable with Character, Shooter, HasHealth {
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
  int currentHealth = 10;
  @override
  int get maxHealth => 10;
  @override
  int damage = 1;
  @override
  bool picked = false;

  Fighter.firstPlayer(
      {this.team = Team.player1, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.7}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().fighterIdle,
      MovableState.damaged: getIt<SpriteManager>().fighterDamaged,
      MovableState.moving: getIt<SpriteManager>().fighterMoving
    };

    size = Constants.partSize;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
    position = Vector2(x, y);
    picked = true;
    name = "first_fighter";
  }

  Fighter.secondPlayer(
      {this.team = Team.player2, double x = Constants.worldSizeX / 2, double y = Constants.worldSizeY * 0.3}) {
    animations = {
      MovableState.idle: getIt<SpriteManager>().corvetteIdle,
      MovableState.damaged: getIt<SpriteManager>().corvetteDamaged,
      MovableState.moving: getIt<SpriteManager>().corvetteMove
    };

    position = Vector2(x, y);
    size = Constants.partSize;
    nativeAngle = angleOffset;
    angle = angleOffset;
    anchor = Anchor.center;
    picked = true;
    name = "second_fighter";
  }

  @override
  void onRemove() {
    super.onRemove();
    if (team == Team.player1) {
      getIt<GameTimer>().add(const GameTimerEvent.playerOneFighterDead());
    } else if (team == Team.player2) {
      getIt<GameTimer>().add(const GameTimerEvent.playerTwoFighterDead());
    }
    if (picked) {
      final other = getIt<CharacterManager>().mothership;
      if (other != null) {
        getIt<CharacterManager>().add(PickCharacter(character: other));
      }
    }
    Player.playShipExplosion();
  }

  @override
  late String name;
}
