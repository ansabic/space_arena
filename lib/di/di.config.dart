// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:space_arena/characters/player.dart' as _i6;
import 'package:space_arena/characters/types/movable_sprite_component.dart' as _i5;
import 'package:space_arena/services/character_manager/character_manager.dart' as _i3;
import 'package:space_arena/services/character_manager/character_manager_impl.dart' as _i4;
import 'package:space_arena/services/sprite_manager/sprite_manager.dart' as _i7;
import 'package:space_arena/services/sprite_manager/sprite_manager_impl.dart' as _i8;
import 'package:space_arena/space_arena_game.dart' as _i9;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CharacterManager>(() => _i4.CharacterManagerImpl());
  gh.factory<_i5.MovableSpriteComponent>(() => _i5.MovableSpriteComponent());
  gh.factory<_i6.Player>(() => _i6.Player.startingPlayer());
  gh.lazySingleton<_i7.SpriteManager>(() => _i8.SpriteManagerImpl());
  gh.lazySingleton<_i9.SpaceArenaGame>(() => _i9.SpaceArenaGame(
        gh<_i7.SpriteManager>(),
        gh<_i3.CharacterManager>(),
      ));
  return getIt;
}
