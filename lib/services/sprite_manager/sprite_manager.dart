import 'package:flame/components.dart';

abstract class SpriteManager {
  late final Sprite playerSprite;

  Future<void> loadGameSprites();
}