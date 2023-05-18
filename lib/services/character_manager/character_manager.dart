import 'package:flame/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/characters/part.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/model/part_side.dart';
import 'package:space_arena/model/team.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../characters/mine.dart';
import '../../characters/types/character.dart';
import '../../constants/constants.dart';
import '../../model/mine_type.dart';
import 'character_state.dart';

@lazySingleton
class CharacterManager extends Bloc<CharacterEvent, CharacterState> {
  List<Character> get characters => state.characters;

  Character? get pickedCharacter => characters.isNotEmpty ? characters.firstWhere((element) => element.picked) : null;

  Team get team => state.team;

  Character get fighter {
    switch (team) {
      case Team.player1:
        return characters[0];
      case Team.player2:
        return characters[2];
      case Team.neutral:
        throw Exception("Player shouldn't be neutral!");
    }
  }

  Character get mothership {
    switch (team) {
      case Team.player1:
        return characters[1];
      case Team.player2:
        return characters[3];
      case Team.neutral:
        throw Exception("Player shouldn't be neutral!");
    }
  }

  @override
  void onTransition(Transition<CharacterEvent, CharacterState> transition) {
    super.onTransition(transition);
    final candidates = transition.nextState.characters.toSet().difference(transition.currentState.characters.toSet());
    getIt<SpaceArenaGame>().addAll(candidates.where((element) => element.parent == null));
  }

  int getCharacterId({required Character character}) {
    if (!characters.contains(character)) {
      throw Exception("Not valid character found!");
    }
    return characters.indexOf(character);
  }

  CharacterManager() : super(CharacterInitial()) {
    on<InitCharacters>((event, emit) async {
      final team = event.team;
      final player1 = Fighter.firstPlayer();
      final playerMothership1 = Mothership.firstPlayer();
      final testPart = WeaponPart(team: team, partSide: PartSide.bottom);
      await playerMothership1.add(testPart);
      final player2 = Fighter.secondPlayer();
      final playerMothership2 = Mothership.secondPlayer();
      emit(RefreshCharacterState(characters: [player1, playerMothership1, player2, playerMothership2], team: team));
      getIt<SpaceArenaGame>().camera.followComponent(fighter);
      add(GenerateInitialMines());
    });
    on<GenerateInitialMines>((event, emit) {
      final goldMinePlayer1 = Mine(mineType: MineType.gold)
        ..position = Vector2(Constants.worldSizeX / 2, Constants.worldSizeY - Constants.mineSize.y / 2);
      final goldMinePlayer2 = Mine(mineType: MineType.gold)..position = Vector2(Constants.worldSizeX / 2, 0);
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
      final oldPicked = newList.firstWhere((element) => element.picked);
      oldPicked.picked = !oldPicked.picked;
      final newPicked = newList.firstWhere((element) => element == event.character);
      newPicked.picked = !newPicked.picked;
      emit(RefreshCharacterState(characters: newList, team: team));
      getIt<SpaceArenaGame>().camera.followComponent(event.character);
    });
    on<RemoveCharacter>((event, emit) {
      final character = event.character;
      final tempChars = [...characters];
      tempChars.remove(character);
      getIt<SpaceArenaGame>().remove(character);
      emit(RefreshCharacterState(characters: tempChars, team: state.team));
    });
    on<DamageCharacter>((event, emit) {
      final newList = [...characters];
      final candidate = newList.firstWhere((e) => e.characterId == event.characterId);
      (candidate as HasHealth).currentHealth--;
      emit(RefreshCharacterState(characters: newList, team: team));
    });
  }
}
