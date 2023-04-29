import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/sprite_manager/sprite_manager.dart';

@lazySingleton
class SpaceArenaGame extends FlameGame with SecondaryTapDetector, HasCollisionDetection {
  final SpriteManager _spriteManager;
  final CharacterManager _characterManager;
  late final Socket socket;

  SpaceArenaGame(this._spriteManager, this._characterManager);

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await _spriteManager.loadGameSprites();
    await _characterManager.loadCharacters();
    add(_characterManager.player);
    add(_characterManager.test);
    socket = await Socket.connect("192.168.1.9", 55555);
    socket.listen((event) {
      final message = utf8.decode(event);
      final json = message.substring(10);
      final map = jsonDecode(json);
      _characterManager.player.moveTo(Vector2(map["x"], map["y"]));
    });
  }

  @override
  void update(double dt) {
    super.update(dt);
    _characterManager.player.updatePosition(dt);
    _characterManager.test.updatePosition(dt);
  }

  @override
  void onSecondaryTapDown(TapDownInfo info) {
    socket.add(utf8.encode(
        "move_event${jsonEncode({"playerId": 1, "x": info.eventPosition.game.x, "y": info.eventPosition.game.y})}"));
  }
}
