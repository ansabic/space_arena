import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

@lazySingleton
class CharacterManager {
  final List<MovableSpriteComponent> _characters = [];
  MovableSpriteComponent? pickedCharacter;

  List<MovableSpriteComponent> get characters => _characters;

  void pickCharacter(MovableSpriteComponent character) {
    pickedCharacter = character;
    getIt<SpaceArenaGame>().camera.followComponent(character);
  }

  void addPlayerCharacters({required bool isFirst}) {
    MovableSpriteComponent player1;
    MovableSpriteComponent player2;
    MovableSpriteComponent playerMothership1;
    MovableSpriteComponent playerMothership2;
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
    _characters.add(player1);
    _characters.add(player2);
    _characters.add(playerMothership1);
    _characters.add(playerMothership2);
    getIt<SpaceArenaGame>().add(player1);
    getIt<SpaceArenaGame>().add(player2);
    getIt<SpaceArenaGame>().add(playerMothership1);
    getIt<SpaceArenaGame>().add(playerMothership2);
    getIt<SpaceArenaGame>().camera.followComponent(player1);
    pickedCharacter = _characters.first;
  }

  MovableSpriteComponent removeCharacter({required int playerId}) {
    final character = _characters.elementAt(playerId);
    _characters.removeAt(playerId);
    getIt<SpaceArenaGame>().remove(character);
    return character;
  }
}
