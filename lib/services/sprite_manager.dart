import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/space_arena_game.dart';

import '../di/di.dart';

@lazySingleton
class SpriteManager {
  Future<void> loadGameSprites() async {
    ///Bullet
    bulletSprite = await getIt<SpaceArenaGame>().loadSprite("bomber/Charge_1.png");

    ///Background
    background = await getIt<SpaceArenaGame>().loadSprite("background/purple_space.png");

    ///Mines
    goldMine = await getIt<SpaceArenaGame>().loadSprite("icons/15.png", srcSize: Vector2(512, 512));
    crystalMine = await getIt<SpaceArenaGame>().loadSprite("icons/20.png", srcSize: Vector2(512, 512));
    plasmaMine = await getIt<SpaceArenaGame>().loadSprite("icons/17.png", srcSize: Vector2(512, 512));

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

    ///Mothership
    mothershipIdle = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "parts2/ship2_body.png",
        SpriteAnimationData.sequenced(
            amount: 1, textureSize: Vector2(37, 37), stepTime: 2, texturePosition: Vector2(0, -6)));
    mothershipMove = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "parts2/ship2_body.png",
        SpriteAnimationData.sequenced(
            amount: 1, textureSize: Vector2(37, 37), stepTime: 2, texturePosition: Vector2(0, -6)));
    mothershipDamaged = await getIt<SpaceArenaGame>().loadSpriteAnimation(
        "parts2/ship2_body.png",
        SpriteAnimationData.sequenced(
            amount: 1, textureSize: Vector2(37, 37), stepTime: 2, texturePosition: Vector2(0, -6)));

    /// Parts
    shieldPart = await getIt<SpaceArenaGame>()
        .loadSprite("parts2/ship2_body2.png", srcSize: Vector2(33, 33), srcPosition: Vector2(-3.5, 0));
    weaponPart = await getIt<SpaceArenaGame>()
        .loadSprite("parts2/ship2_detail.png", srcSize: Vector2(45, 45), srcPosition: Vector2(0, -18));
    thrusterPart = await getIt<SpaceArenaGame>()
        .loadSprite("parts2/ship2_detail2-2.png", srcSize: Vector2(30, 30), srcPosition: Vector2(0, -2));
    connectionPart = await getIt<SpaceArenaGame>()
        .loadSprite("parts2/ship2_turbines.png", srcSize: Vector2(21, 21), srcPosition: Vector2(-2.5, -0));
  }

  late Sprite bulletSprite;
  late Sprite background;

  late Sprite goldMine;
  late Sprite crystalMine;
  late Sprite plasmaMine;

  late SpriteAnimation fighterIdle;
  late SpriteAnimation fighterDamaged;
  late SpriteAnimation fighterMoving;

  late SpriteAnimation corvetteIdle;
  late SpriteAnimation corvetteMove;
  late SpriteAnimation corvetteDamaged;

  late SpriteAnimation mothershipIdle;
  late SpriteAnimation mothershipMove;
  late SpriteAnimation mothershipDamaged;

  late Sprite shieldPart;
  late Sprite weaponPart;
  late Sprite thrusterPart;
  late Sprite connectionPart;
}
