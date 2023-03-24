import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/controllers/game/floppy_bird_controller.dart';

class FloppyBirdGame extends StatelessWidget {
  const FloppyBirdGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FloppyBirdController());
    return  GetBuilder<FloppyBirdController>(
      builder:(controller)=> GestureDetector(
        onTap: controller.jump,
        child: Container(
          color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                left: controller.pipeX,
                top: controller.pipeY + controller.gap,
                child: Container(
                  width: 100,
                  height: 300,
                  color: Colors.green,
                ),
              ),
              Positioned(
                left: controller.pipeX,
                bottom: 0,
                child: Container(
                  width: 100,
                  height: 300,
                  color: Colors.green,
                ),
              ),
              Positioned(
                left: 150,
                top: controller.birdY,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
