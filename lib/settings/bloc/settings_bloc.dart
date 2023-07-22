import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/constants/constants.dart';

import '../../services/my_address_test.dart';

part 'settings_bloc.freezed.dart';

part 'settings_event.dart';

part 'settings_state.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final MyAddressTest _myAddressTest;

  SettingsBloc(this._myAddressTest)
      : super(const SettingsState(
            crystalMineCoolDown: Constants.crystalMineGeneratePeriod,
            gameDurationSeconds: Constants.gameDurationSeconds,
            goldMineCoolDown: Constants.goldMineGeneratePeriod,
            plasmaMineCoolDown: Constants.plasmaMineGeneratePeriod,
            serverIpAddress: "localhost")) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        setGoldMineCoolDown: (_SetGoldMineCD value) {
          emit(state.copyWith(goldMineCoolDown: value.goldMineCoolDown));
        },
        setCrystalMineCoolDown: (value) {
          emit(state.copyWith(crystalMineCoolDown: value.crystalMineCoolDown));
        },
        setPlasmaMineCoolDown: (value) {
          emit(state.copyWith(plasmaMineCoolDown: value.plasmaMineCoolDown));
        },
        setMyIpAddress: (_SetMyIpAddress value) async {
          final address = await _myAddressTest.getMyIpAddress();
          print(address);
          emit(state.copyWith(serverIpAddress: address));
        },
        setOtherAddress: (_SetOtherIpAddress value) {
          emit(state.copyWith(serverIpAddress: value.address));
        },
        setGameDuration: (_SetGameDurationSeconds value) {
          emit(state.copyWith(gameDurationSeconds: value.gameDurationSeconds));
        },
      );
      add(const SettingsEvent.setMyIpAddress());
    });
  }
}
