import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../controllers/game/skm_controller.dart';

class ShanKoeMeeGame extends StatelessWidget {
  const ShanKoeMeeGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SkmController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.green
        ),
        child: GetBuilder<SkmController>(
          builder: (skmController) {
            return Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.13,
                        height: Get.width * 0.2,
                        child: Stack(
                          alignment: Alignment.center,
                          children: skmController.botCards.map((e) {
                            int index= skmController.botCards.indexOf(e);
                            bool shouldShowCards = skmController.gameState == GameState.showTime || skmController.gameState == GameState.finished;
                            return RotationTransition(
                              turns: AlwaysStoppedAnimation((index*20)/360),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: shouldShowCards?BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset(skmController.nameToPath(e)).image
                                    )
                                  ):const BoxDecoration(),
                                  child: shouldShowCards?Container():Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Colors.white
                                        ),
                                        alignment: Alignment.center,
                                        child: const CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.13,
                        height: Get.width * 0.2,
                        child: Stack(
                          alignment: Alignment.center,
                          children: skmController.myCards.map((e) {
                            int index= skmController.myCards.indexOf(e);
                            return RotationTransition(
                              turns: AlwaysStoppedAnimation((index*20)/360),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: Image.asset(skmController.nameToPath(e)).image
                                    )
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                controlPanel(),
              ],
            );
          }
        ),
      ),
    );
  }

  Widget controlPanel(){
    SkmController skmController = Get.find();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        children: [
          if(skmController.gameState == GameState.idle || skmController.gameState == GameState.showTime)ElevatedButton(onPressed: () async{
            skmController.startMatch();
          }, child: const Text('Start')),
          if(skmController.gameState == GameState.playing)ElevatedButton(onPressed: () async{
            skmController.drawACard();
          }, child: const Text('Draw A Card')),
          if(skmController.gameState == GameState.playing)ElevatedButton(onPressed: () async{
            skmController.show();
          }, child: const Text('Show')),
          if(skmController.gameState == GameState.finished)ElevatedButton(onPressed: () async{
            skmController.startMatch();
          }, child: const Text('Restart')),
        ],
      ),
    );
  }

}
