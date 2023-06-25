import 'package:desktop_window/desktop_window.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

import 'overlays/common_overlay.dart';
import 'overlays/mothership_overlay.dart';
import 'overlays/overlay_bloc/overlay_cubit.dart';

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setFullScreen(true);
  runApp(MaterialApp(
      theme: ThemeData(textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: Scaffold(
          body: BlocProvider(
        create: (_) => getIt<OverlayCubit>(),
        child: Stack(
            fit: StackFit.expand,
            children: [GameWidget(game: getIt<SpaceArenaGame>()), const CommonOverlay(), const MothershipOverlay()]),
      ))));
}
