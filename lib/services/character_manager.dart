import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';

@lazySingleton
class CharacterManager {
  final List<MovableSpriteComponent> _characters = [];

  List<MovableSpriteComponent> get characters => _characters;

  MovableSpriteComponent addPlayerCharacter({bool isSecond = false, required int playerId}) {
    MovableSpriteComponent player;
    if (!isSecond) {
      player = Player.firstPlayer(playerId: playerId);
    } else {
      player = Player.secondPlayer(playerId: playerId);
    }
    _characters.add(player);
    return player;
  }

  MovableSpriteComponent removeCharacter({required int playerId}) {
    final character = _characters.elementAt(playerId);
    _characters.removeAt(playerId);
    return character;
  }
}
