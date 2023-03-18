import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/ship_part.dart';
import 'package:space_arena/characters/types/movable_sprite_component.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

import '../../characters/player.dart';

@LazySingleton(as: CharacterManager)
class CharacterManagerImpl implements CharacterManager {
  @override
  Future<void> loadCharacters() async {
    player = getIt<Player>();
  }

  @override
  late MovableSpriteComponent player;
}
