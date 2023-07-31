import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_menu_event.dart';
part 'main_menu_state.dart';
part 'main_menu_bloc.freezed.dart';

class MainMenuBloc extends Bloc<MainMenuEvent, MainMenuState> {
  MainMenuBloc() : super(const MainMenuState(entry: MainMenuEntry.mainMenu)) {
    on<MainMenuEvent>((event, emit) async {
      await event.map(changePage: (value) async {
        emit(state.copyWith(entry: value.entry));
      });
    });
  }
}
