import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';

import '../di/di.dart';
import '../space_arena_game.dart';

@injectable
class Player extends SpriteComponent {
  @factoryMethod
  Player.startingPlayer() {
    sprite = getIt<SpriteManager>().playerSprite;
    x = getIt<SpaceArenaGame>().size.x / 2;
    y = getIt<SpaceArenaGame>().size.y / 2;
    width = 50;
    height = 100;
    anchor = Anchor.center;
  }

  void move(Vector2 delta) {
    position.add(delta);
  }
}
