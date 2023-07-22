import 'package:flame/components.dart';
import 'package:model/team.dart';

import '../../di/di.dart';
import '../../services/character_manager/character_manager.dart';

/// Generalized mixin which represents server-aware in-game character
///
/// [characterId] should be used only to handle server-aware characters such as motherships, fighters and mines
mixin Character implements TeamCharacter {
  int get characterId => getIt<CharacterManager>().getCharacterId(character: this);
}

mixin TeamCharacter on PositionComponent {
  abstract Team team;
  abstract String name;
  abstract bool picked;
}
