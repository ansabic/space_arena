import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';

@lazySingleton
class CharacterManager {
  final List<MovableSpriteComponent> _characters = [];

  List<MovableSpriteComponent> get characters => _characters;

  MovableSpriteComponent addPlayerCharacter({bool isSecond = false}) {
    MovableSpriteComponent player;
    if (!isSecond) {
      player = Player.firstPlayer();
    } else {
      player = Player.secondPlayer();
    }
    _characters.add(player);
    return player;
  }
}
