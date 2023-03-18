import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';

@lazySingleton
class SpaceArenaGame extends FlameGame with PanDetector {
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
  void onPanUpdate(DragUpdateInfo info) {
    _characterManager.player.move(info.delta.game);
  }
}
