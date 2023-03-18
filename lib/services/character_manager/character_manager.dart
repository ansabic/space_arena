import 'package:space_arena/characters/types/movable_sprite_component.dart';

import '../../characters/player.dart';

abstract class CharacterManager {
  Future<void> loadCharacters();
  late MovableSpriteComponent player;
}
