import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:model/mine_type.dart';
import 'package:model/team.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../characters/mine.dart';
import '../../characters/types/character.dart';
import '../../constants/constants.dart';
import 'character_state.dart';

@lazySingleton
class CharacterManager extends Bloc<CharacterEvent, CharacterState> {
  List<Character> get characters => state.characters;

  Character? get pickedCharacter =>
      characters.isNotEmpty ? characters.firstWhereOrNull((element) => element.picked) : null;

  Team get team => state.team;

  Fighter? get fighter =>
      characters.firstWhereOrNull((element) => element.team == team && element is Fighter) as Fighter?;

  Mothership? get mothership =>
      characters.firstWhereOrNull((element) => element.team == team && element is Mothership) as Mothership?;

  @override
  void onTransition(Transition<CharacterEvent, CharacterState> transition) {
    super.onTransition(transition);
    final candidatesToAdd =
        transition.nextState.characters.toSet().difference(transition.currentState.characters.toSet());
    final candidatesToRemove =
        transition.currentState.characters.toSet().difference(transition.nextState.characters.toSet());
    if (candidatesToAdd.isNotEmpty) {
      getIt<SpaceArenaGame>().addAll(candidatesToAdd.where((element) => element.parent == null));
    }
    if (candidatesToRemove.isNotEmpty) {
      for (var e in candidatesToRemove) {
        e.removeFromParent();
      }
    }
  }

  int getCharacterId({required Character character}) {
    if (!characters.contains(character)) {
      debugPrint("Character $character is already destroyed!");
    }
    return characters.indexOf(character);
  }

  CharacterManager() : super(CharacterInitial()) {
    on<AddCharacter>((event, emit) {
      emit(RefreshCharacterState(characters: [...state.characters, event.character], team: team));
    });
    on<InitCharacters>((event, emit) async {
      final team = event.team;
      final player1 = Fighter.firstPlayer();
      final playerMothership1 = Mothership.firstPlayer();
      final player2 = Fighter.secondPlayer();
      final playerMothership2 = Mothership.secondPlayer();
      emit(RefreshCharacterState(characters: [player1, playerMothership1, player2, playerMothership2], team: team));
      getIt<SpaceArenaGame>().camera.followComponent(fighter!);
      add(GenerateInitialMines());
    });
    on<GenerateInitialMines>((event, emit) {
      final goldMinePlayer1 = Mine(mineType: MineType.gold)
        ..position = Vector2(Constants.worldSizeX / 2, Constants.worldSizeY - Constants.mineSize.y / 2);
      final goldMinePlayer2 = Mine(mineType: MineType.gold)
        ..position = Vector2(Constants.worldSizeX / 2, Constants.mineSize.y / 2);
      final plasmaMinePlayer1 = Mine(mineType: MineType.plasma)
        ..position = Vector2(Constants.worldSizeX / 2 - Constants.mineSize.x, Constants.worldSizeY / 2);
      final plasmaMinePlayer2 = Mine(mineType: MineType.plasma)
        ..position = Vector2(Constants.worldSizeX / 2 + Constants.mineSize.x, Constants.worldSizeY / 2);
      emit(RefreshCharacterState(
          characters: [...characters, goldMinePlayer1, goldMinePlayer2, plasmaMinePlayer1, plasmaMinePlayer2],
          team: state.team));
    });
    on<PickCharacter>((event, emit) {
      final newList = [...characters];
      final oldPicked = newList.firstWhereOrNull((element) => element.picked);
      oldPicked?.picked = !oldPicked.picked;
      final newPicked = newList.firstWhere((element) => element == event.character);
      newPicked.picked = !newPicked.picked;
      emit(RefreshCharacterState(characters: newList, team: team));
      getIt<SpaceArenaGame>().camera.followComponent(event.character);
    });
    on<RemoveCharacter>((event, emit) {
      final character = event.character;
      final tempChars = [...characters];
      tempChars.remove(character);
      emit(RefreshCharacterState(characters: tempChars, team: state.team));
    });
    on<DamageCharacter>((event, emit) {
      final newList = [...characters];
      final candidate = newList.firstWhereOrNull((e) => e.characterId == event.characterId);
      (candidate as HasHealth?)?.currentHealth--;
      emit(RefreshCharacterState(characters: newList, team: team));
    });
  }
}
