import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/model/team.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

import '../model/mine_type.dart';
import '../services/bank/bank_bloc.dart';
import '../services/sprite_manager.dart';
import 'bullet.dart';

class Mine extends SpriteComponent with CollisionCallbacks, Character {
  final MineType mineType;
  final usesController = StreamController<int>();
  late int usesLeft;
  @override
  Team team;

  @override
  Future<void> onLoad() async {
    add(hitBox);
    return super.onLoad();
  }

  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, 0))
    ..renderShape = true
    ..paint = (Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke);

  Mine({required this.mineType, this.team = Team.neutral}) {
    anchor = Anchor.center;
    switch (mineType) {
      case MineType.gold:
        sprite = getIt<SpriteManager>().goldMine;
        break;
      case MineType.plasma:
        sprite = getIt<SpriteManager>().plasmaMine;
        break;
      case MineType.crystal:
        sprite = getIt<SpriteManager>().crystalMine;
        break;
    }
    size = Constants.mineSize;

    usesController.add(mineType.uses);
    usesController.stream.listen((event) async {
      usesLeft = event;
      if (event == 0) {
        getIt<CharacterManager>().add(RemoveCharacter(character: this));
        await usesController.close();
      }
    });
  }

  @override
  Future<void> onCollision(Set<Vector2> intersectionPoints, PositionComponent other) async {
    super.onCollision(intersectionPoints, other);
    if (other is Bullet && other.team == (getIt<CharacterManager>().pickedCharacter)?.team) {
      getIt<BankBloc>().add(AddValue(mineType: mineType));
      usesController.add(usesLeft - 1);
    }
  }
}
