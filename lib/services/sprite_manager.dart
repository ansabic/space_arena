import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/space_arena_game.dart';

import '../di/di.dart';

@lazySingleton
class SpriteManager {
  Future<void> loadGameSprites() async {
    playerSprite = await getIt<SpaceArenaGame>().loadSprite("fighter/Idle.png");
    corvetteSprite = await getIt<SpaceArenaGame>().loadSprite("corvette/Idle.png");
    bulletSprite = await getIt<SpaceArenaGame>().loadSprite("bomber/Charge_1.png");
  }

  late Sprite playerSprite;

  late Sprite corvetteSprite;

  late Sprite bulletSprite;
}
