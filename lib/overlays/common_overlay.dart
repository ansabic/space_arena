import 'dart:io';

import 'package:collection/collection.dart';
import 'package:events/pause_game_event/pause_game_event.dart';
import 'package:events/resume_game_event/resume_game_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model/part_type.dart';
import 'package:space_arena/characters/types/has_health.dart';
import 'package:space_arena/characters/types/movable.dart';
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart';
import 'package:space_arena/overlays/widgets/part_widget.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';
import 'package:space_arena/services/character_manager/character_state.dart';
import 'package:space_arena/services/client_connection.dart';
import 'package:space_arena/services/game_timer/game_timer.dart';

import '../characters/types/character.dart';
import '../di/di.dart';
import '../services/bank/bank_bloc.dart';
import '../services/character_manager/character_event.dart';

class CommonOverlay extends StatelessWidget {
  const CommonOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<BankBloc>()),
          BlocProvider(create: (_) => getIt<GameTimer>()),
        ],
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Stack(
            children: [
              Center(
                child: BlocBuilder<GameTimer, GameTimerState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.winner != null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("GAME OVER",
                              textAlign: TextAlign.center,
                              style: (TextStyle(color: Colors.red, fontSize: 80, fontWeight: FontWeight.bold))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Winner: ", style: (TextStyle(color: Colors.red, fontSize: 28))),
                              Text(BlocProvider.of<GameTimer>(context).state.winner?.name ?? "",
                                  style: (const TextStyle(color: Colors.red, fontSize: 28))),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              BlocBuilder<OverlayCubit, OverlayCubitState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Row(
                      children: [
                        Expanded(
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
                                      return Text(state.crystal.toString(),
                                          style: const TextStyle(color: Colors.purple));
                                    }),
                                  ],
                                ),
                              ),
                            ]),

                            ///Bottom row
                            BlocProvider(
                                create: (_) => getIt<CharacterManager>(),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: BlocBuilder<CharacterManager, CharacterState>(
                                      builder: (context, state) =>
                                          Text(getIt<CharacterManager>().pickedCharacter?.name ?? "None"),
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 15.0),
                                          child: Text("Speed: "),
                                        ),
                                        BlocBuilder<CharacterManager, CharacterState>(
                                          builder: (context, state) {
                                            return Text(
                                                (getIt<CharacterManager>().pickedCharacter as Movable?)
                                                        ?.speed
                                                        .toStringAsFixed(2) ??
                                                    "-",
                                                style: const TextStyle(color: Colors.blueAccent));
                                          },
                                        )
                                      ],
                                    ),
                                  )
                                ]))
                          ]),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(children: [
                                GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                              backgroundColor: Color.fromARGB(255, 35, 35, 35),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                    child: Text("Do you really want to quit?"),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            },
                                                            child: Text("No")),
                                                        TextButton(
                                                            onPressed: () {
                                                              exit(0);
                                                            },
                                                            child: Text("Yes"))
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ));
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.cancel,
                                      color: Colors.red,
                                    ))
                              ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                BlocBuilder<GameTimer, GameTimerState>(builder: (context, state) {
                                  return Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Text(
                                            "${(state.seconds ~/ 60).toString().padLeft(2, "0")}:${(state.seconds % 60).toString().padLeft(2, "0")}"),
                                      ),
                                      GestureDetector(
                                          behavior: HitTestBehavior.opaque,
                                          onTap: () {
                                            switch (state.status) {
                                              case TimerStatus.normal:
                                                getIt<ClientConnection>().addEvent(const PauseGameEvent());
                                                break;
                                              case TimerStatus.paused:
                                                getIt<ClientConnection>().addEvent(const ResumeGameEvent());
                                                break;
                                              case TimerStatus.done:
                                                break;
                                            }
                                          },
                                          child: Builder(
                                            builder: (context) {
                                              switch (state.status) {
                                                case TimerStatus.normal:
                                                  return const Icon(
                                                    Icons.pause,
                                                    color: Colors.red,
                                                  );
                                                case TimerStatus.paused:
                                                  return const Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.green,
                                                  );
                                                case TimerStatus.done:
                                                  return const SizedBox();
                                              }
                                            },
                                          )),
                                    ],
                                  );
                                })
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                children: [
                                  Visibility(
                                    visible: Platform.isAndroid ||Platform.isIOS,
                                    child: GestureDetector(
                                        onTap: () {
                                          final _characterManager = getIt<CharacterManager>();
                                          if (_characterManager.characters
                                                  .where((element) => element.team == _characterManager.team)
                                                  .length ==
                                              1) {
                                            return;
                                          }
                                          final character = (_characterManager.pickedCharacter == _characterManager.fighter
                                              ? _characterManager.mothership
                                              : _characterManager.fighter) as Character?;
                                          if (character != null) {
                                            _characterManager.add(PickCharacter(character: character));
                                          }
                                        },
                                        child: Icon(
                                          Icons.swap_horiz,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...PartType.values.map((e) => PartWidget(partType: e)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 1),
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.opaque,
                                      onTap: () {
                                        BlocProvider.of<OverlayCubit>(context).deletePart();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                                        child: SizedBox(
                                          width: [MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height]
                                                  .min /
                                              7,
                                          height: [MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height]
                                                  .min /
                                              7,
                                          child: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
