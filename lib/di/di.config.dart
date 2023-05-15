// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:space_arena/coordinator/coordinator.dart' as _i9;
import 'package:space_arena/coordinator/server_connection.dart' as _i6;
import 'package:space_arena/services/character_manager.dart' as _i3;
import 'package:space_arena/services/client_connection.dart' as _i4;
import 'package:space_arena/services/event_service.dart' as _i5;
import 'package:space_arena/services/sprite_manager.dart' as _i8;
import 'package:space_arena/space_arena_game.dart' as _i7;

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
  gh.factory<_i5.EventService>(() => _i5.EventService());
  gh.lazySingleton<_i6.ServerConnection>(() => _i6.ServerConnection());
  gh.lazySingleton<_i7.SpaceArenaGame>(() => _i7.SpaceArenaGame(gh<_i3.CharacterManager>()));
  gh.lazySingleton<_i8.SpriteManager>(() => _i8.SpriteManager());
  gh.factory<_i9.Coordinator>(() => _i9.Coordinator(
        gh<_i5.EventService>(),
        gh<_i6.ServerConnection>(),
      ));
  return getIt;
}
