import 'package:flame/components.dart';

abstract class SpriteManager {
  late final Sprite playerSprite;
  late final Sprite corvetteSprite;

  Future<void> loadGameSprites();
}