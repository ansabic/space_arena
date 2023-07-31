import 'package:audioplayers/audioplayers.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:model/part_side.dart';
import 'package:model/part_type.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/shooter.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/parts_manager.dart';
import 'package:space_arena/services/player/player.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../constants/constants.dart';
import '../di/di.dart';

abstract class Part extends SpriteComponent with Character, CollisionCallbacks, HasHealth {
  @override
  bool picked = false;
  @override
  Team team;
  final PartSide partSide;

  @override
  Future<void> onLoad() async {
    add(hitBox);
    return super.onLoad();
  }

  @override
  void onRemove() {
    super.onRemove();
    if (getIt<PartsManager>().points.keys.contains(this)) {
      getIt<PartsManager>().removePart(part: this);
    }
    Player.playShipExplosion();
  }

  ShapeHitbox get hitBox => RectangleHitbox(size: Constants.partSize);

  Part({required this.partSide, required this.team, required PartType partType}) {
    switch (partType) {
      case PartType.shield:
        sprite = getIt<SpriteManager>().shieldPart;
        break;
      case PartType.weapon:
        sprite = getIt<SpriteManager>().weaponPart;
        break;
      case PartType.thruster:
        sprite = getIt<SpriteManager>().thrusterPart;
        break;
    }
    anchor = Anchor.center;
    size = Constants.partSize;
    switch (partSide) {
      case PartSide.left:
        position = Vector2(size.x / 2, -size.y / 2);
        break;
      case PartSide.top:
        position = Vector2(3 * size.x / 2, size.y / 2);
        break;
      case PartSide.right:
        position = Vector2(size.x / 2, 3 * size.y / 2);
        break;
      case PartSide.bottom:
        position = Vector2(-size.x / 2, size.y / 2);
        break;
    }
  }
}

class WeaponPart extends Part with Shooter {
  @override
  int currentHealth = 15;

  WeaponPart({required super.team, required super.partSide}) : super(partType: PartType.weapon);

  @override
  int get maxHealth => 15;

  @override
  String name = "Weapon";

  @override
  int damage = 2;
}

class ShieldPart extends Part {
  @override
  int currentHealth = 50;

  ShieldPart({required super.team, required super.partSide}) : super(partType: PartType.shield);

  @override
  int get maxHealth => 50;

  @override
  String name = "Shield";
}

class ThrusterPart extends Part {
  @override
  int currentHealth = 10;

  ThrusterPart({required super.team, required super.partSide}) : super(partType: PartType.thruster) {
    final motherShip = getIt<CharacterManager>()
        .characters
        .firstWhere((element) => element is Mothership && element.team == team) as Mothership;
    motherShip.speed = motherShip.speed + 10;
  }

  @override
  int get maxHealth => 10;

  @override
  String name = "Thruster";

  @override
  void onRemove() {
    final motherShip = getIt<CharacterManager>()
        .characters
        .firstWhere((element) => element is Mothership && element.team == team) as Mothership;
    motherShip.speed = motherShip.speed - 10;
    super.onRemove();
  }
}
