import 'package:flame/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/space_arena_game.dart';

import '../../characters/mine.dart';
import '../../model/mine_type.dart';
import 'character_state.dart';

@lazySingleton
class CharacterManager extends Bloc<CharacterEvent, CharacterState> {
  List<PositionComponent> get characters => state.characters;

  PositionComponent? get pickedCharacter => state.pickedCharacter;

  CharacterManager() : super(CharacterInitial()) {
    on<InitCharacters>((event, emit) {
      final isFirst = event.isFirst;
      MovableSpriteComponent player1;
      MovableSpriteComponent player2;
      MovableSpriteComponent playerMothership1;
      MovableSpriteComponent playerMothership2;
      final goldMine = Mine(mineType: MineType.gold)..position = Vector2(300, 400);
      final crystalMine = Mine(mineType: MineType.crystal)..position = Vector2(700, 400);
      final plasmaMine = Mine(mineType: MineType.plasma)..position = Vector2(500, 400);
      if (isFirst) {
        player1 = Player.firstPlayer();
        player2 = Player.secondPlayer();
        playerMothership1 = Mothership.firstPlayer();
        playerMothership2 = Mothership.secondPlayer();
      } else {
        player1 = Player.secondPlayer();
        player2 = Player.firstPlayer();
        playerMothership1 = Mothership.secondPlayer();
        playerMothership2 = Mothership.firstPlayer();
      }
      getIt<SpaceArenaGame>().add(player1);
      getIt<SpaceArenaGame>().add(player2);
      getIt<SpaceArenaGame>().add(playerMothership1);
      getIt<SpaceArenaGame>().add(playerMothership2);
      getIt<SpaceArenaGame>().add(goldMine);
      getIt<SpaceArenaGame>().add(plasmaMine);
      getIt<SpaceArenaGame>().add(crystalMine);
      getIt<SpaceArenaGame>().camera.followComponent(player1);
      emit(RefreshCharacterState(
          pickedCharacter: player1,
          characters: [player1, player2, playerMothership1, playerMothership2, goldMine, plasmaMine, crystalMine]));
    });
    on<PickCharacter>((event, emit) {
      emit(RefreshCharacterState(pickedCharacter: event.character, characters: characters));
      getIt<SpaceArenaGame>().camera.followComponent(event.character);
    });
    on<RemoveCharacter>((event, emit) {
      final character = event.character;
      final tempChars = [...characters];
      tempChars.remove(character);
      getIt<SpaceArenaGame>().remove(character);
      emit(RefreshCharacterState(pickedCharacter: pickedCharacter, characters: tempChars));
    });
  }
}
