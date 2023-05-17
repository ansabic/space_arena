import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/character_manager/character_state.dart';

import '../di/di.dart';
import '../services/bank/bank_bloc.dart';

class CommonOverlay extends StatelessWidget {
  const CommonOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => getIt<BankBloc>())],
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          BlocProvider(
              create: (_) => getIt<CharacterManager>(),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: BlocBuilder<CharacterManager, CharacterState>(
                    builder: (context, state) => Text(getIt<CharacterManager>().pickedCharacter?.name ?? "None"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Text("Health: "),
                      ),
                      BlocBuilder<CharacterManager, CharacterState>(
                        builder: (context, state) {
                          return Text(
                              "${(getIt<CharacterManager>().pickedCharacter as HasHealth?)?.currentHealth ?? "-"}/${(getIt<CharacterManager>().pickedCharacter as HasHealth?)?.maxHealth ?? "-"}",
                              style: const TextStyle(color: Colors.red));
                        },
                      )
                    ],
                  ),
                )
              ]))
        ]));
  }
}
