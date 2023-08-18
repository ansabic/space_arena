import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/di.dart';
import '../overlays/common_overlay.dart';
import '../overlays/overlay_bloc/overlay_cubit.dart';
import '../space_arena_game.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => getIt<OverlayCubit>(),
      child: BlocBuilder<OverlayCubit, OverlayCubitState>(
        builder: (context, state) {
          return Stack(fit: StackFit.expand, children: [
            Visibility(
                visible: getIt<OverlayCubit>().state != OverlayCubitState.waitingAnotherPlayer,
                child: GameWidget(game: getIt<SpaceArenaGame>())),
            Visibility(
                visible: getIt<OverlayCubit>().state != OverlayCubitState.waitingAnotherPlayer,
                child: const CommonOverlay()),
            Center(
              child: Visibility(
                visible: getIt<OverlayCubit>().state == OverlayCubitState.waitingAnotherPlayer,
                child: Scaffold(
                  backgroundColor: Colors.black,
                  body: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text("Please wait for another player to join the game..."),
                            ),
                            CircularProgressIndicator.adaptive()
                          ]),
                    ],
                  ),
                ),
              ),
            )
          ]);
        },
      ),
    ));
  }
}
