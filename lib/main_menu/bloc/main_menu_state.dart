part of 'main_menu_bloc.dart';

@freezed
class MainMenuState with _$MainMenuState {
  const factory MainMenuState({
    required MainMenuEntry entry
}) = _MainMenuState;
}

enum MainMenuEntry {
  mainMenu, multiplayer, settings, rules;
}
