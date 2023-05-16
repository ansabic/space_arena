import 'package:desktop_window/desktop_window.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setFullScreen(true);
  runApp(GameWidget(game: getIt<SpaceArenaGame>()));
}
