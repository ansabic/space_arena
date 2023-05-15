import 'package:flame/components.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';

import '../di/di.dart';
import '../services/sprite_manager.dart';

class Player2 extends MovableSpriteComponent {
  @override
  double speed = 200;

  @override
  Vector2? destination;

  @override
  double angleOffset = 0;

  Player2.startingPlayer({required double x, required double y}) {
    sprite = getIt<SpriteManager>().corvetteSprite;
    width = 50;
    height = 100;
    this.x = x;
    this.y = y;
  }
}
