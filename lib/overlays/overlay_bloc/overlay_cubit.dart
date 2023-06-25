import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/overlays/widgets/choose_side_widget.dart';

import '../../characters/types/character.dart';

part 'overlay_cubit_state.dart';

@lazySingleton
class OverlayCubit extends Cubit<OverlayCubitState> {
  OverlayCubit() : super(OverlayCubitState.overlayEmpty);

  void placePart() => emit(OverlayCubitState.overlayPlacePart);

  void overlaySetPartOrientation({required Character character, required BuildContext context}) {
    emit(OverlayCubitState.overlayPartOrientation);
    showDialog(
        context: context,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          return Dialog(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                  height: size.height / 2,
                  width: size.width / 2,
                  child: ChooseSideWidget(tapped: () => Navigator.pop(context), character: character)));
        });
  }
}
