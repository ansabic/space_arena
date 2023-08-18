import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:model/part_type.dart';
import 'package:space_arena/overlays/widgets/choose_side_widget.dart';

import '../../characters/types/character.dart';
import '../../di/di.dart';
import '../../space_arena_game.dart';

part 'overlay_cubit_state.dart';

@lazySingleton
class OverlayCubit extends Cubit<OverlayCubitState> {
  OverlayCubit() : super(OverlayCubitState.overlayEmpty);

  PartType? pickedPart;

  void placePart({required PartType type}) {
    pickedPart = type;
    emit(OverlayCubitState.overlayPlacePart);
  }

  void deletePart() {
    emit(OverlayCubitState.overlayDeletePart);
  }


  void waitAnotherPlayer() {
    getIt<SpaceArenaGame>().pauseEngine();
    emit(OverlayCubitState.waitingAnotherPlayer);
  }

  Future<void> overlaySetPartOrientation({required Character character, required BuildContext context}) async {
    emit(OverlayCubitState.overlayPartOrientation);
    await showDialog(
        context: context,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          return Dialog(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                  height: size.height / 2,
                  width: size.width / 2,
                  child:
                      ChooseSideWidget(tapped: () => Navigator.pop(context), character: character, type: pickedPart!)));
        });
    pickedPart = null;
  }

  void resetState() {
    emit(OverlayCubitState.overlayDefault);
  }
}
