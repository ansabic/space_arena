import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/constants/constants.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/game_screen/games_screen.dart';
import 'package:space_arena/main_menu/main_menu.dart';
import 'package:space_arena/services/player/player.dart';
import 'package:space_arena/services/sprite_manager.dart';
import 'package:space_arena/settings/settings.dart';

import 'main_menu/bloc/main_menu_bloc.dart';
import 'main_menu/multiplayer_menu/multiplayer_menu.dart';

final globalKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  Player.playBackgroundIdle();
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
          primaryColor: Colors.white,
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.white)),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white), bodySmall: TextStyle(color: Colors.white))),
      home: BlocProvider(
        create: (_) => MainMenuBloc(),
        child: Stack(
          children: [
            Builder(builder: (context) {
              return Image.asset(
                "assets/images/background/main_menu_loop.gif",
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.cover,
              );
            }),
            BlocBuilder<MainMenuBloc, MainMenuState>(
              builder: (context, state) {
                switch (state.entry) {
                  case MainMenuEntry.mainMenu:
                    return const MainMenu();
                  case MainMenuEntry.multiplayer:
                    return const MultiplayerMenu();
                  case MainMenuEntry.settings:
                    return const SettingsScreen();
                }
              },
            ),
          ],
        ),
      )));
}
