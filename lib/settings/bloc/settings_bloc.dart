import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intranet_ip/intranet_ip.dart';

import '../../constants/constants.dart';

part 'settings_bloc.freezed.dart';

part 'settings_event.dart';

part 'settings_state.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final goldCd = TextEditingController();
  final crystalCd = TextEditingController();
  final plasmaCd = TextEditingController();
  final gameDuration = TextEditingController();

  void _clearAllTexts() {
    goldCd.clear();
    crystalCd.clear();
    plasmaCd.clear();
    gameDuration.clear();
  }

  SettingsBloc()
      : super(const SettingsState(
            crystalMineCoolDown: Constants.crystalMineGeneratePeriod,
            gameDurationSeconds: Constants.gameDurationSeconds,
            goldMineCoolDown: Constants.goldMineGeneratePeriod,
            plasmaMineCoolDown: Constants.plasmaMineGeneratePeriod,
            serverIpAddress: "localhost")) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        setGoldMineCoolDown: (_SetGoldMineCD value) {
          _clearAllTexts();
          emit(state.copyWith(goldMineCoolDown: value.goldMineCoolDown));
        },
        setCrystalMineCoolDown: (value) {
          _clearAllTexts();
          emit(state.copyWith(crystalMineCoolDown: value.crystalMineCoolDown));
        },
        setPlasmaMineCoolDown: (value) {
          _clearAllTexts();
          emit(state.copyWith(plasmaMineCoolDown: value.plasmaMineCoolDown));
        },
        setMyIpAddress: (_SetMyIpAddress value) async {
          _clearAllTexts();
          final address = (await intranetIpv4()).address;
          emit(state.copyWith(serverIpAddress: address));
        },
        setOtherAddress: (_SetOtherIpAddress value) {
          _clearAllTexts();
          emit(state.copyWith(serverIpAddress: value.address));
        },
        setGameDuration: (_SetGameDurationSeconds value) {
          _clearAllTexts();
          emit(state.copyWith(gameDurationSeconds: value.gameDurationSeconds));
        },
      );

    });
    add(const SettingsEvent.setMyIpAddress());
  }
}
