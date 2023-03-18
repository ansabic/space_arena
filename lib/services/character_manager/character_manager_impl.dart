import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/player.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

@LazySingleton(as: CharacterManager)
class CharacterManagerImpl implements CharacterManager {
  @override
  Future<void> loadCharacters() async {
    player = getIt<Player>();
  }

  @override
  late Player player;
}
