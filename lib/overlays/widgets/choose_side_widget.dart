import 'package:events/create_part_event/create_part_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model/part_side.dart';
import 'package:model/part_type.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/services/parts_manager.dart';

import '../../characters/types/character.dart';
import '../overlay_bloc/overlay_cubit.dart';

class ChooseSideWidget extends StatelessWidget {
  final void Function() tapped;
  final Character character;
  final PartType type;

  const ChooseSideWidget({Key? key, required this.tapped, required this.character, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OverlayCubit>(),
      child: BlocBuilder<OverlayCubit, OverlayCubitState>(
        builder: (context, state) {
          final topEnabled = type == PartType.thruster ? false : !getIt<PartsManager>().hasUp(character: character);
          final bottomEnabled = !getIt<PartsManager>().hasDown(character: character);
          final leftEnabled = type == PartType.thruster ? false : !getIt<PartsManager>().hasLeft(character: character);
          final rightEnabled =
              type == PartType.thruster ? false : !getIt<PartsManager>().hasRight(character: character);
          return SizedBox(
            width: 250,
            height: 250,
            child: Column(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    if (topEnabled) {
                      getIt<ClientConnection>().addEvent(CreatePartEvent(
                          from: character.characterId, side: PartSide.top, team: getIt<CharacterManager>().team, type: type));
                      tapped();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.arrow_upward, size: 50, color: topEnabled ? Colors.amber : Colors.grey)],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if (leftEnabled) {
                          getIt<ClientConnection>().addEvent(CreatePartEvent(
                              from: character.characterId, side: PartSide.left, team:  getIt<CharacterManager>().team, type: type));
                          tapped();
                        }
                      },
                      child: Icon(Icons.arrow_back, size: 50, color: leftEnabled ? Colors.amber : Colors.grey),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if (rightEnabled) {
                          getIt<ClientConnection>().addEvent(CreatePartEvent(
                              from: character.characterId, side: PartSide.right, team:  getIt<CharacterManager>().team, type: type));
                          tapped();
                        }
                      },
                      child: Icon(Icons.arrow_forward, size: 50, color: rightEnabled ? Colors.amber : Colors.grey),
                    )
                  ],
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (bottomEnabled) {
                      getIt<ClientConnection>().addEvent(CreatePartEvent(
                          from: character.characterId, side: PartSide.bottom, team: getIt<CharacterManager>().team, type: type));
                      tapped();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.arrow_downward, size: 50, color: bottomEnabled ? Colors.amber : Colors.grey)],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
