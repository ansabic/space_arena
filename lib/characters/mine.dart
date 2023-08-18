import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:model/mine_type.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

import '../services/bank/bank_bloc.dart';
import '../services/player/player.dart';
import '../services/sprite_manager.dart';
import 'bullet.dart';

class Mine extends SpriteComponent with CollisionCallbacks, Character, HasHealth {
  final MineType mineType;
  @override
  Team team;
  @override
  String name = "Mine";
  @override
  bool picked = false;

  @override
  Future<void> onLoad() async {
    add(hitBox);
    return super.onLoad();
  }

  ShapeHitbox get hitBox => CircleHitbox(radius: [width, height].min / 2, anchor: const Anchor(0, 0));

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
    currentHealth = mineType.uses;
  }

  @override
  Future<void> onCollision(Set<Vector2> intersectionPoints, PositionComponent other) async {
    super.onCollision(intersectionPoints, other);
    if (other is Bullet && other.team == (getIt<CharacterManager>().pickedCharacter)?.team) {
      getIt<BankBloc>().add(AddValue(mineType: mineType));
    }
  }

  @override
  int get maxHealth => mineType.uses;

  @override
  late int currentHealth;

  @override
  void onRemove() {
    if(currentHealth > 0) {
      return;
    }
    super.onRemove();
    Player.playShipExplosion();
  }
}
