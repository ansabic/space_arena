// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:space_arena/services/character_manager.dart' as _i3;
import 'package:space_arena/services/client_connection.dart' as _i4;
import 'package:space_arena/services/sprite_manager.dart' as _i6;
import 'package:space_arena/space_arena_game.dart' as _i5;

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
  gh.lazySingleton<_i3.CharacterManager>(() => _i3.CharacterManager());
  gh.lazySingleton<_i4.ClientConnection>(() => _i4.ClientConnection());
  gh.lazySingleton<_i5.SpaceArenaGame>(() => _i5.SpaceArenaGame(gh<_i3.CharacterManager>()));
  gh.lazySingleton<_i6.SpriteManager>(() => _i6.SpriteManager());
  return getIt;
}
