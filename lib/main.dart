import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/space_arena_game.dart';

Future<void> main() async {
  configureDependencies();
  runApp(GameWidget(game: getIt<SpaceArenaGame>()));
}
