import 'dart:async';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/characters/types/team_defined.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/coordinator/events/move_event/move_event.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/services/sprite_manager.dart';

import 'di/di.dart';

class BackgroundComponent extends SpriteComponent {
  BackgroundComponent(Sprite sprite, Vector2 size) : super(sprite: sprite, size: size);

  @override
  void update(double dt) {
    super.update(dt);
    x = getIt<SpaceArenaGame>().camera.position.x;
    y = getIt<SpaceArenaGame>().camera.position.y;
  }
}

@lazySingleton
class SpaceArenaGame extends FlameGame with SecondaryTapDetector, HasCollisionDetection, TapDetector {
  final CharacterManager _characterManager;

  SpaceArenaGame(this._characterManager);

  @override
  Vector2 get canvasSize => Constants.worldSize;

  @override
  Future<void>? onLoad() async {
    camera.worldBounds = const Rect.fromLTWH(0, 0, Constants.worldSizeX, Constants.worldSizeY);
    await getIt<SpriteManager>().loadGameSprites();
    final connection = getIt<ClientConnection>();
    await connection.connect();

    await super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    for (var element in _characterManager.characters) {
      if (element is MovableSpriteComponent) {
        element.updatePosition(dt);
      }
    }
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);
    final candidate = _characterManager.characters.firstWhereOrNull((element) =>
        element is TeamDefined &&
        (element as TeamDefined).playerId != null &&
        (element as TeamDefined).playerId! % 2 == (_characterManager.characters.first as TeamDefined).playerId! % 2 &&
        element.position.distanceTo(info.eventPosition.game) < 30);
    if (candidate != null) {
      _characterManager.add(PickCharacter(character: candidate));
    }
  }

  @override
  void onSecondaryTapDown(TapDownInfo info) {
    super.onSecondaryTapDown(info);
    getIt<ClientConnection>().addEvent(MoveEvent(
        playerId: (_characterManager.pickedCharacter! as TeamDefined).playerId!,
        x: info.eventPosition.game.x,
        y: info.eventPosition.game.y));
  }
}
