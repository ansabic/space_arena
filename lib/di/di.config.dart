// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:space_arena/coordinator/coordinator.dart' as _i12;
import 'package:space_arena/coordinator/server_connection.dart' as _i9;
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart' as _i7;
import 'package:space_arena/services/bank/bank_bloc.dart' as _i3;
import 'package:space_arena/services/character_manager/character_manager.dart' as _i4;
import 'package:space_arena/services/client_connection.dart' as _i5;
import 'package:space_arena/services/event_service.dart' as _i6;
import 'package:space_arena/services/parts_manager.dart' as _i8;
import 'package:space_arena/services/sprite_manager.dart' as _i11;
import 'package:space_arena/space_arena_game.dart' as _i10;

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
  gh.lazySingleton<_i3.BankBloc>(() => _i3.BankBloc());
  gh.lazySingleton<_i4.CharacterManager>(() => _i4.CharacterManager());
  gh.lazySingleton<_i5.ClientConnection>(() => _i5.ClientConnection());
  gh.factory<_i6.EventService>(() => _i6.EventService());
  gh.lazySingleton<_i7.OverlayCubit>(() => _i7.OverlayCubit());
  gh.lazySingleton<_i8.PartsManager>(() => _i8.PartsManager());
  gh.lazySingleton<_i9.ServerConnection>(() => _i9.ServerConnection());
  gh.lazySingleton<_i10.SpaceArenaGame>(() => _i10.SpaceArenaGame(gh<_i4.CharacterManager>()));
  gh.lazySingleton<_i11.SpriteManager>(() => _i11.SpriteManager());
  gh.factory<_i12.Coordinator>(() => _i12.Coordinator(
        gh<_i6.EventService>(),
        gh<_i9.ServerConnection>(),
      ));
  return getIt;
}
