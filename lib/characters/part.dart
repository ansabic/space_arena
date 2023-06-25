import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/shooter.dart';
import 'package:space_arena/coordinator/events/damage_event/damage_event.dart';
import 'package:space_arena/model/part_side.dart';
import 'package:space_arena/model/part_type.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/services/sprite_manager.dart';

import '../constants/constants.dart';
import '../di/di.dart';
import '../model/team.dart';
import 'bullet.dart';

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

  ShapeHitbox get hitBox => RectangleHitbox(size: Constants.partSize)
    ..renderShape = true
    ..paint = (Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke);

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

  @override
  Future<void> onCollision(Set<Vector2> intersectionPoints, PositionComponent other) async {
    super.onCollision(intersectionPoints, other);
    if (other is Bullet && other.team != getIt<CharacterManager>().team) {
      getIt<ClientConnection>().addEvent(DamageEvent(characterId: characterId, damage: other.damage));
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

  ThrusterPart({required super.team, required super.partSide}) : super(partType: PartType.thruster);

  @override
  int get maxHealth => 10;

  @override
  String name = "Thruster";
}
