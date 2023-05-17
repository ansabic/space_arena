import 'package:equatable/equatable.dart';
import 'package:space_arena/characters/types/character.dart';

import '../../model/team.dart';

abstract class CharacterState extends Equatable {
  final Team team;
  final List<Character> characters;
  final Character? pickedCharacter;

  const CharacterState({required this.team, required this.pickedCharacter, required this.characters});

  @override
  List<Object?> get props => [characters, pickedCharacter, team];
}

class CharacterInitial extends CharacterState {
  CharacterInitial() : super(characters: [], pickedCharacter: null, team: Team.neutral);
}

class RefreshCharacterState extends CharacterState {
  const RefreshCharacterState({required super.pickedCharacter, required super.characters, required super.team});
}
