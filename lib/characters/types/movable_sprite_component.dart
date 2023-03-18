import 'package:flame/components.dart';
import 'package:injectable/injectable.dart';

import '../../constants/constants.dart';

@injectable
class MovableSpriteComponent extends SpriteComponent {
  double? speed = 100;
  double angleOffset = 0;
  Vector2? destination;

  void moveTo(Vector2 destination) {
    this.destination = destination;
    lookAt(destination);
    angle += angleOffset;
  }

  void updatePosition(double dt) {
    if (destination != null && speed != null) {
      final diff = destination! - position;
      position += diff.normalized() * speed! * dt;

      if (diff.length < Constants.proximityDistance) {
        destination = null;
      }
    }
  }
}
