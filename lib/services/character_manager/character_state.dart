import 'package:equatable/equatable.dart';
import 'package:flame/components.dart';

abstract class CharacterState extends Equatable {
  final List<PositionComponent> characters;
  final PositionComponent? pickedCharacter;

  const CharacterState({required this.pickedCharacter, required this.characters});

  @override
  List<Object?> get props => [characters, pickedCharacter];
}

class CharacterInitial extends CharacterState {
  CharacterInitial() : super(characters: [], pickedCharacter: null);
}

class RefreshCharacterState extends CharacterState {
  const RefreshCharacterState({required super.pickedCharacter, required super.characters});
}
