import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/palyer_two.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

import '../characters/player.dart';

@lazySingleton
class CharacterManager {
  Future<void> loadCharacters({required int playerId}) async {
    if (playerId == 0) {
      characters[playerId] =
          Player.startingPlayer(x: getIt<SpaceArenaGame>().size.x / 2, y: getIt<SpaceArenaGame>().size.y / 2);
      characters[playerId - 1] = Player2.startingPlayer(x: 80, y: 0);
    } else {
      characters[playerId] = Player.startingPlayer(x: 80, y: 0);
      characters[playerId - 1] =
          Player2.startingPlayer(x: getIt<SpaceArenaGame>().size.x / 2, y: getIt<SpaceArenaGame>().size.y / 2);
    }
  }

  final Map<int, MovableSpriteComponent> characters = {};
}
