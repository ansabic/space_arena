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

import '../di/di.dart';
import '../services/bank/bank_bloc.dart';

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
                          children: [
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
