import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../di/di.dart';

@LazySingleton(as: SpriteManager)
class SpriteManagerImpl implements SpriteManager {
  @override
  Future<void> loadGameSprites() async {
    playerSprite = await getIt<SpaceArenaGame>().loadSprite("fighter/Idle.png");
    corvetteSprite = await getIt<SpaceArenaGame>().loadSprite("corvette/Idle.png");
  }

  @override
  late Sprite playerSprite;

  @override
  late Sprite corvetteSprite;
}
