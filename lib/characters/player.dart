import 'dart:math';

import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';

import '../di/di.dart';
import '../space_arena_game.dart';

@injectable
class Player extends MovableSpriteComponent {
  @override
  double speed = 200;
  @override
  Vector2? destination;
  @override
  double angleOffset = -pi / 2;

  @factoryMethod
  Player.startingPlayer() {
    sprite = getIt<SpriteManager>().playerSprite;
    x = getIt<SpaceArenaGame>().size.x / 2;
    y = getIt<SpaceArenaGame>().size.y / 2;
    width = 50;
    height = 100;
    angle = angleOffset;
    anchor = Anchor.center;
  }
}
