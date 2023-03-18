import '../../characters/player.dart';

abstract class CharacterManager {
  Future<void> loadCharacters();
  late Player player;
}
