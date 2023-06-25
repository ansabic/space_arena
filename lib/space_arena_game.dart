import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/types/movable.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/coordinator/events/move_event/move_event.dart';
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart';
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
class SpaceArenaGame extends FlameGame with SecondaryTapDetector, HasCollisionDetection, TapDetector, KeyboardEvents {
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
      if (element is Movable) {
        (element as Movable).updatePosition(dt);
      }
    }
  }

  @override
  KeyEventResult onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (keysPressed.contains(LogicalKeyboardKey.tab)) {
      _characterManager.add(PickCharacter(
          character: _characterManager.pickedCharacter == _characterManager.fighter
              ? _characterManager.mothership
              : _characterManager.fighter));
    }
    return super.onKeyEvent(event, keysPressed);
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);

    final candidate = _characterManager.characters.firstWhereOrNull((element) =>
        (element).team == _characterManager.team &&
        element.position.distanceTo(info.eventPosition.game) < Constants.clickProximity);

    switch (getIt<OverlayCubit>().state) {
      case OverlayCubitState.overlayEmpty:
        if (candidate != null) {
          _characterManager.add(PickCharacter(character: candidate));
        }
        break;
      case OverlayCubitState.overlayDefault:
        if (candidate != null) {
          _characterManager.add(PickCharacter(character: candidate));
        }
        break;
      case OverlayCubitState.overlayPlacePart:
        if (candidate != null && buildContext != null) {
          getIt<OverlayCubit>().overlaySetPartOrientation(character: candidate, context: buildContext!);
        }
        break;
      case OverlayCubitState.overlayPartOrientation:
        if (candidate != null) {
          _characterManager.add(PickCharacter(character: candidate));
        }
        break;
    }
  }

  @override
  void onSecondaryTapDown(TapDownInfo info) {
    super.onSecondaryTapDown(info);
    final pickedCharacter = _characterManager.pickedCharacter;
    if (pickedCharacter != null) {
      getIt<ClientConnection>().addEvent(MoveEvent(
          characterId: pickedCharacter.characterId, x: info.eventPosition.game.x, y: info.eventPosition.game.y));
    }
  }
}
