import 'package:flame_audio/flame_audio.dart';
import 'package:audioplayers/audioplayers.dart';
class Player {
  static final List<AudioPlayer> backgroundStack = [];
  static Future<void> playBackgroundIdle() async {
    for (var element in backgroundStack) {
      element.stop();
    }
    final player = await FlameAudio.loopLongAudio("space_background.mp3");
    backgroundStack.add(player);
  }

  static Future<void> playBackgroundGame() async {
    for (var element in backgroundStack) {
      element.stop();
    }
    final player = await FlameAudio.loopLongAudio("space_background_1.mp3");
    backgroundStack.add(player);
  }

  static Future<void> playLaser() async {
    FlameAudio.play("laser.mp3",volume: 0.2);
  }

  static Future<void> playMineExplosion() async {
    FlameAudio.play("mine_explosion.mp3",volume: 0.6);
  }
  static Future<void> playShipExplosion() async {
    FlameAudio.play("ship_explosion.mp3",volume: 0.6);
  }
}
