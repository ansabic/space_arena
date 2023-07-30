import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/game_screen/games_screen.dart';
import 'package:space_arena/main_menu/main_menu.dart';
import 'package:space_arena/services/sprite_manager.dart';
import 'package:space_arena/settings/settings.dart';

import 'main_menu/multiplayer_menu/multiplayer_menu.dart';

final globalKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await getIt<SpriteManager>().loadGameSprites();
  if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    await DesktopWindow.setFullScreen(true);
  }
  runApp(MaterialApp(
      navigatorKey: globalKey,
      routes: {
        Constants.routes.game: (_) => const GameScreen(),
        Constants.routes.settings: (_) => const SettingsScreen(),
        Constants.routes.multiplayerMenu: (_) => const MultiplayerMenu()
      },
      theme: ThemeData(
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white), bodySmall: TextStyle(color: Colors.white))),
      home: const MainMenu()));
}
