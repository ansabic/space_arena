import 'package:model/sync_data/sync_data.dart';
import 'package:model/team.dart';

import '../../characters/types/character.dart';

abstract class CharacterEvent {}

class InitCharacters extends CharacterEvent {
  final Team team;

  InitCharacters({required this.team});
}

class PickCharacter extends CharacterEvent {
  final Character character;

  PickCharacter({required this.character});
}

class AddCharacter extends CharacterEvent {
  final Character character;

  AddCharacter({required this.character});
}

class RemoveCharacter extends CharacterEvent {
  final Character character;

  RemoveCharacter({required this.character});
}

class GenerateInitialMines extends CharacterEvent {}


class SyncCharacters extends CharacterEvent {
  final SyncData data;

  SyncCharacters({required this.data});
}
