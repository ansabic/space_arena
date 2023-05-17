import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/characters/fighter.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/character_manager/character_state.dart';

import '../di/di.dart';
import '../model/team.dart';
import '../services/bank/bank_bloc.dart';

class FighterOverlay extends StatelessWidget {
  const FighterOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CharacterManager>(),
        ),
        BlocProvider(
          create: (_) => getIt<BankBloc>(),
        ),
      ],
      child: BlocBuilder<CharacterManager, CharacterState>(
        builder: (context, state) {
          return Visibility(
            visible: state.team != Team.neutral && state.pickedCharacter is Fighter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Top row
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Image.asset("assets/images/icons/15.png", width: 15, height: 15),
                        ),
                        BlocBuilder<BankBloc, BankState>(builder: (context, state) {
                          return Text(state.gold.toString(), style: const TextStyle(color: Colors.amber));
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Image.asset("assets/images/icons/17.png", width: 15, height: 15),
                        ),
                        BlocBuilder<BankBloc, BankState>(builder: (context, state) {
                          return Text(state.plasma.toString(), style: const TextStyle(color: Colors.blue));
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Image.asset("assets/images/icons/20.png", width: 15, height: 15),
                        ),
                        BlocBuilder<BankBloc, BankState>(builder: (context, state) {
                          return Text(state.crystal.toString(), style: const TextStyle(color: Colors.purple));
                        }),
                      ],
                    ),
                  )
                ]),

                ///Bottom row
                Row()
              ],
            ),
          );
        },
      ),
    );
  }
}
