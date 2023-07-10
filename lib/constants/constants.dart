import 'package:flame/components.dart';

class Constants {
  static const worldSizeX = 2000.0;
  static const worldSizeY = 1200.0;
  static final worldSize = Vector2(worldSizeX, worldSizeY);
  static const proximityDistance = 3;
  static const shootingDistance = 200.0;

  static const bulletSpeed = 300.0;

  static const shotPeriodMillis = 200;

  static final mineSize = Vector2(100, 100);

  static const clickProximity = 30;
  static final partSize = Vector2(50, 50);
  static const respawnTime = 20;
  static const goldMineGeneratePeriod = 60;
  static const plasmaMineGeneratePeriod = 75;
  static const crystalMineGeneratePeriod = 30;
}
