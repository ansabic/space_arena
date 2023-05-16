import 'package:flame/components.dart';

abstract class CharacterEvent {}

class InitCharacters extends CharacterEvent {
  final bool isFirst;

  InitCharacters({required this.isFirst});
}

class PickCharacter extends CharacterEvent {
  final PositionComponent character;

  PickCharacter({required this.character});
}

class RemoveCharacter extends CharacterEvent {
  final PositionComponent character;

  RemoveCharacter({required this.character});
}
