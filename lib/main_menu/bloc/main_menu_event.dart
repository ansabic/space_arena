part of 'main_menu_bloc.dart';

@freezed
class MainMenuEvent with _$MainMenuEvent {
  const factory MainMenuEvent.changePage({required MainMenuEntry entry}) = _ChangePage;
}
