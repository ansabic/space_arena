import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';

import '../di/di.dart';
import '../services/sprite_manager/sprite_manager.dart';

@injectable
class Player2 extends MovableSpriteComponent {
  @override
  double speed = 200;

  @override
  Vector2? destination;

  @override
  double angleOffset = 0;

  @factoryMethod
  Player2.startingPlayer() {
    sprite = getIt<SpriteManager>().corvetteSprite;
    width = 50;
    height = 100;
    x = 80;
  }
}
