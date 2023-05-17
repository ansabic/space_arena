import 'package:space_arena/characters/types/character.dart';

import '../../model/team.dart';

abstract class CharacterState {
  final Team team;
  final List<Character> characters;

  const CharacterState({required this.team, required this.characters});
}

class CharacterInitial extends CharacterState {
  CharacterInitial() : super(characters: [], team: Team.neutral);
}

class RefreshCharacterState extends CharacterState {
  const RefreshCharacterState({required super.characters, required super.team});
}
