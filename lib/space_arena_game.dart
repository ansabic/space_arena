import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:events/move_event/move_event.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:model/part_type.dart';
import 'package:model/price.dart';
import 'package:space_arena/characters/types/character.dart';
import 'package:space_arena/characters/types/movable.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart';
import 'package:space_arena/services/bank/bank_bloc.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/services/sprite_manager.dart';

import 'characters/part.dart';
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

@singleton
class SpaceArenaGame extends FlameGame with SecondaryTapDetector, HasCollisionDetection, TapDetector, KeyboardEvents {
  final CharacterManager _characterManager;

  SpaceArenaGame(this._characterManager);

  @override
  Vector2 get canvasSize => Constants.worldSize;

  @override
  Future<void>? onLoad() async {
    camera.worldBounds = const Rect.fromLTWH(0, 0, Constants.worldSizeX, Constants.worldSizeY);
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
      if (_characterManager.characters.where((element) => element.team == _characterManager.team).length == 1) {
        return super.onKeyEvent(event, keysPressed);
      }
      final character = (_characterManager.pickedCharacter == _characterManager.fighter
          ? _characterManager.mothership
          : _characterManager.fighter) as Character?;
      if (character != null) {
        _characterManager.add(PickCharacter(character: character));
      }
    } else if (keysPressed.contains(LogicalKeyboardKey.digit1)) {
      final bankState = getIt<BankBloc>().state;
      final part = PartType.values.firstWhere((element) => element.key == 1);
      final valid =
          part.price.validate(other: Price(gold: bankState.gold, crystal: bankState.crystal, plasma: bankState.plasma));
      if (valid) {
        getIt<OverlayCubit>().placePart(type: part);
      }
    } else if (keysPressed.contains(LogicalKeyboardKey.digit2)) {
      final bankState = getIt<BankBloc>().state;
      final part = PartType.values.firstWhere((element) => element.key == 2);
      final valid =
          part.price.validate(other: Price(gold: bankState.gold, crystal: bankState.crystal, plasma: bankState.plasma));
      if (valid) {
        getIt<OverlayCubit>().placePart(type: part);
      }
    } else if (keysPressed.contains(LogicalKeyboardKey.digit3)) {
      final bankState = getIt<BankBloc>().state;
      final part = PartType.values.firstWhere((element) => element.key == 3);
      final valid =
          part.price.validate(other: Price(gold: bankState.gold, crystal: bankState.crystal, plasma: bankState.plasma));
      if (valid) {
        getIt<OverlayCubit>().placePart(type: part);
      }
    }
    return super.onKeyEvent(event, keysPressed);
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);
    final candidate = componentsAtPoint(info.eventPosition.game)
        .firstWhereOrNull((element) => element is Character && (element).team == _characterManager.team) as Character?;
    if (candidate != null) {
      switch (getIt<OverlayCubit>().state) {
        case OverlayCubitState.overlayEmpty:
          if (candidate is! Part) {
            _characterManager.add(PickCharacter(character: candidate));
          }
          break;
        case OverlayCubitState.overlayDefault:
          if (candidate is! Part) {
            _characterManager.add(PickCharacter(character: candidate));
          }
          break;
        case OverlayCubitState.overlayPlacePart:
          if (buildContext != null) {
            getIt<OverlayCubit>().overlaySetPartOrientation(character: candidate, context: buildContext!);
          }
          break;
        case OverlayCubitState.overlayPartOrientation:
          if (candidate is! Part) {
            _characterManager.add(PickCharacter(character: candidate));
          }
          break;
        case OverlayCubitState.overlayDeletePart:
          if (candidate is Part) {
            _characterManager.add(RemoveCharacter(character: candidate));
          }
          break;
      }
    } else if (Platform.isAndroid) {
      final pickedCharacter = _characterManager.pickedCharacter;
      if (pickedCharacter != null) {
        getIt<ClientConnection>().addEvent(MoveEvent(
            characterId: pickedCharacter.characterId, x: info.eventPosition.game.x, y: info.eventPosition.game.y));
      }
    }
    getIt<OverlayCubit>().resetState();
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
