part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setGoldMineCoolDown({required int goldMineCoolDown}) = _SetGoldMineCD;
  const factory SettingsEvent.setCrystalMineCoolDown({required int crystalMineCoolDown}) = _SetCrystalMineCD;
  const factory SettingsEvent.setPlasmaMineCoolDown({required int plasmaMineCoolDown}) = _SetPlasmaMineCD;
  const factory SettingsEvent.setMyIpAddress() = _SetMyIpAddress;
  const factory SettingsEvent.setGameDuration({required int gameDurationSeconds}) = _SetGameDurationSeconds;
  const factory SettingsEvent.setOtherAddress({required String address}) = _SetOtherIpAddress;
}
