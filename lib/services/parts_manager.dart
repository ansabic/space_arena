import 'dart:math';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:space_arena/characters/mothership.dart';
import 'package:space_arena/di/di.dart';
import 'package:space_arena/model/part_side.dart';
import 'package:space_arena/services/character_manager/character_manager.dart';

import '../characters/types/character.dart';
import '../model/team.dart';

@lazySingleton
class PartsManager {
  final Map<Character, Point<int>> points = {};

  void removePart({required Character part}) {
    points.remove(part);
    _setSpeedWithFurthestPart(team: part.team);
  }

  void addPart({required Character? from, required Character part, required PartSide side}) {
    if (from == null) {
      points[part] = const Point(0, 0);
      return;
    }
    if (!points.containsKey(from)) {
      points[from] = const Point(0, 0);
    }

    switch (side) {
      case PartSide.left:
        points[part] = Point(points[from]!.x - 1, points[from]!.y);
        break;
      case PartSide.top:
        points[part] = Point(points[from]!.x, points[from]!.y + 1);
        break;
      case PartSide.right:
        points[part] = Point(points[from]!.x + 1, points[from]!.y);
        break;
      case PartSide.bottom:
        points[part] = Point(points[from]!.x, points[from]!.y - 1);
        break;
    }
    _setSpeedWithFurthestPart(team: part.team);
  }

  bool hasUp({required Character character}) {
    return points.containsKey(character) &&
        points.entries.any((element) =>
            element.key != character &&
            points[character]!.x == element.value.x &&
            points[character]!.y + 1 == element.value.y);
  }

  bool hasDown({required Character character}) {
    return points.containsKey(character) &&
        points.entries.any((element) =>
            element.key != character &&
            points[character]!.x == element.value.x &&
            points[character]!.y - 1 == element.value.y);
  }

  bool hasRight({required Character character}) {
    return points.containsKey(character) &&
        points.entries.any((element) =>
            element.key != character &&
            points[character]!.x + 1 == element.value.x &&
            points[character]!.y == element.value.y);
  }

  bool hasLeft({required Character character}) {
    return points.containsKey(character) &&
        points.entries.any((element) =>
            element.key != character &&
            points[character]!.x - 1 == element.value.x &&
            points[character]!.y == element.value.y);
  }

  void _setSpeedWithFurthestPart({required Team team}) {
    final furthestDistance = points.isNotEmpty ? points.values.map((e) => e.distanceTo(const Point(0, 0))).max : 1;
    final mothership = getIt<CharacterManager>()
        .characters
        .firstWhere((element) => element is Mothership && element.team == team) as Mothership;
    mothership.rotationSpeed = 1 / (furthestDistance * furthestDistance);
  }
}
