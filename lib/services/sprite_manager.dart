import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/space_arena_game.dart';

import '../di/di.dart';

@lazySingleton
class SpriteManager {
  Future<void> loadGameSprites() async {
    ///Bullet
    bulletSprite = await getIt<SpaceArenaGame>().loadSprite("bomber/Charge_1.png");

    ///Fighter
    fighterIdle = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "fighter/Idle.png", SpriteAnimationData.sequenced(amount: 1, textureSize: Vector2.all(192), stepTime: 2));
    fighterDamaged = await getIt<SpaceArenaGame>().loadSpriteAnimation("fighter/Damage.png",
        SpriteAnimationData.sequenced(amount: 9, textureSize: Vector2.all(192), stepTime: 0.2, loop: false));
    fighterMoving = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "fighter/Move.png", SpriteAnimationData.sequenced(amount: 6, textureSize: Vector2.all(192), stepTime: 0.2));

    ///Corvette
    corvetteIdle = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "corvette/Idle.png", SpriteAnimationData.sequenced(amount: 1, textureSize: Vector2.all(192), stepTime: 2));
    corvetteDamaged = await getIt<SpaceArenaGame>().loadSpriteAnimation("corvette/Damage.png",
        SpriteAnimationData.sequenced(amount: 9, textureSize: Vector2.all(192), stepTime: 0.2, loop: false));
    corvetteMove = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "corvette/Move.png", SpriteAnimationData.sequenced(amount: 6, textureSize: Vector2.all(192), stepTime: 0.2));
  }

  late Sprite bulletSprite;

  late SpriteAnimation fighterIdle;
  late SpriteAnimation fighterDamaged;
  late SpriteAnimation fighterMoving;

  late SpriteAnimation corvetteIdle;
  late SpriteAnimation corvetteMove;
  late SpriteAnimation corvetteDamaged;
}
