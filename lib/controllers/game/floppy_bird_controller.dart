import 'package:get/get.dart';
import 'dart:math' as math;


class FloppyBirdController extends GetxController {
  double birdY = 0;
  double velocity = 0;
  double gravity = 0.5;
  double gap = 100;
  double pipeX = 0;
  double pipeY = 0;

  void jump() {
    velocity = -10;
  }

  void updateData() {
    velocity += gravity;
    birdY += velocity;
    pipeX -= 5;
    if (pipeX < -100) {
      pipeX = 400;
      pipeY = -100 + (math.Random().nextDouble() * 200);
    }
    if (birdY > 300 || birdY < 0) {
      Get.snackbar('Game Over', 'You lose!');
      Get.delete<FloppyBirdController>();
    }
  }
}
