import 'package:desktop_window/desktop_window.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

import 'overlays/common_overlay.dart';
import 'overlays/mothership_overlay.dart';

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setFullScreen(true);
  runApp(MaterialApp(
      theme: ThemeData(textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: Scaffold(
          body: Stack(fit: StackFit.expand, children: [
        GameWidget(game: getIt<SpaceArenaGame>()),
        const Positioned(top: 20, left: 20, child: CommonOverlay()),
        const MothershipOverlay()
      ]))));
}
