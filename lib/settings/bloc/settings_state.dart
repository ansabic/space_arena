part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Required()required int goldMineCoolDown,
    required int crystalMineCoolDown,
    required int plasmaMineCoolDown,
    required int gameDurationSeconds,
    required String serverIpAddress
}) = _Initial;
}
