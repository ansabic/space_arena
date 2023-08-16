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
      child: Stack(
          fit: StackFit.expand,
          children: [GameWidget(game: getIt<SpaceArenaGame>()), const CommonOverlay()]),
    ));
  }
}
