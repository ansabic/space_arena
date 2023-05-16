import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

@lazySingleton
class CharacterManager {
  final List<MovableSpriteComponent> _characters = [];

  List<MovableSpriteComponent> get characters => _characters;

  void addPlayerCharacters({required bool isFirst}) {
    MovableSpriteComponent player1;
    MovableSpriteComponent player2;
    if (isFirst) {
      player1 = Player.firstPlayer();
      player2 = Player.secondPlayer();
    } else {
      player1 = Player.secondPlayer();
      player2 = Player.firstPlayer();
    }
    _characters.add(player1);
    _characters.add(player2);
    getIt<SpaceArenaGame>().add(player1);
    getIt<SpaceArenaGame>().add(player2);
  }

  MovableSpriteComponent removeCharacter({required int playerId}) {
    final character = _characters.elementAt(playerId);
    _characters.removeAt(playerId);
    return character;
  }
}
