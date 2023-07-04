import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/characters/part.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/model/part_side.dart';
import 'package:space_arena/services/character_manager/character_event.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/parts_manager.dart';

import '../../characters/types/character.dart';
import '../overlay_bloc/overlay_cubit.dart';

class ChooseSideWidget extends StatelessWidget {
  final void Function() tapped;
  final Character character;

  const ChooseSideWidget({Key? key, required this.tapped, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characterManager = getIt<CharacterManager>();
    return BlocProvider.value(
      value: getIt<OverlayCubit>(),
      child: BlocBuilder<OverlayCubit, OverlayCubitState>(
        builder: (context, state) {
          final topEnabled = !getIt<PartsManager>().hasUp(character: character);
          final bottomEnabled = !getIt<PartsManager>().hasDown(character: character);
          final leftEnabled = !getIt<PartsManager>().hasLeft(character: character);
          final rightEnabled = !getIt<PartsManager>().hasRight(character: character);
          return SizedBox(
            width: 250,
            height: 250,
            child: Column(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    if (topEnabled) {
                      final part = WeaponPart(team: character.team, partSide: PartSide.top);
                      getIt<PartsManager>().addPart(from: character, part: part, side: PartSide.top);
                      await character.add(part);
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
                          final part = WeaponPart(team: character.team, partSide: PartSide.left);
                          getIt<PartsManager>().addPart(from: character, part: part, side: PartSide.left);
                          character.add(part);
                          characterManager.add(AddCharacter(character: part));
                          tapped();
                        }
                      },
                      child: Icon(Icons.arrow_back, size: 50, color: leftEnabled ? Colors.amber : Colors.grey),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        if (rightEnabled) {
                          final part = WeaponPart(team: character.team, partSide: PartSide.right);
                          getIt<PartsManager>().addPart(from: character, part: part, side: PartSide.right);
                          character.add(part);
                          characterManager.add(AddCharacter(character: part));
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
                      final part = WeaponPart(team: character.team, partSide: PartSide.bottom);
                      getIt<PartsManager>().addPart(from: character, part: part, side: PartSide.bottom);
                      character.add(part);
                      characterManager.add(AddCharacter(character: part));
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
