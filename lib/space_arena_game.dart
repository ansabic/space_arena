import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';

@lazySingleton
class SpaceArenaGame extends FlameGame with SecondaryTapDetector {
  final SpriteManager _spriteManager;
  final CharacterManager _characterManager;

  SpaceArenaGame(this._spriteManager, this._characterManager);

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await _spriteManager.loadGameSprites();
    await _characterManager.loadCharacters();
    add(_characterManager.player);
  }

  @override
  void update(double dt) {
    super.update(dt);
    _characterManager.player.updatePosition(dt);
  }

  @override
  void onSecondaryTapDown(TapDownInfo info) {
    _characterManager.player.moveTo(info.eventPosition.game);
  }
}
