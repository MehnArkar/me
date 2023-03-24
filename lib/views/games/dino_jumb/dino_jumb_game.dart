import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/controllers/game/dino_jumg_controller.dart';
import 'package:portfolio_v2/views/global/super_scaffold.dart';

class DinoJumbGame extends StatelessWidget {
  const DinoJumbGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DinoJumpController());
    return SuperScaffold(
        body: bodyWidget(context)
    );
  }

  Widget bodyWidget(BuildContext context){
    return GetBuilder<DinoJumpController>(
      builder:(controller)=> GestureDetector(
        onTap: (){
            controller.onJumb();
        },
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: double.maxFinite,
              color: Colors.white,
              child: gameScreen(context),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: double.maxFinite,
              color: Colors.grey,
              alignment: Alignment.center,
              child: scorePanel(),
            ),
          ],
        ),
      ),
    );
  }

  Widget gameScreen(BuildContext context){
    return GetBuilder<DinoJumpController>(
      builder:(controller)=> LayoutBuilder(
        builder:(ct,contraint)=> Stack(
          alignment: Alignment.bottomLeft,
          children: [
            if(controller.currentGameState==GameState.stop)
              startGamePanel(),
            if(controller.currentGameState==GameState.gameOver)
              gameOverPanel(),
            //Tree
            AnimatedBuilder(
              animation: controller.treeAnimation,
              builder:(ctx,child)=> Positioned(
                  bottom: 0,
                  right:controller.treeAnimation.value,
                  child: tree(context)),
            ),

            //Dino
            AnimatedBuilder(
              animation: controller.dinoController,
              builder:(ctx,child)=> Positioned(
                  left: MediaQuery.of(context).size.width*0.2,
                  bottom:(contraint.maxHeight-MediaQuery.of(context).size.height*0.15) * controller.dinoController.value,
                  child: dino(context)),
            ),
          ],
        ),
      ),
    );
  }

  Widget dino(BuildContext context){
    return GetBuilder<DinoJumpController>(
      builder:(controller)=>
          Container(
            key: controller.dinoKey,
            child: Image.asset(
              'assets/images/dino.png',
        color: Colors.black.withOpacity(0.5),
        width: MediaQuery.of(context).size.height*0.15,
      fit: BoxFit.cover,
      ),
          ),
    );
  }

  Widget tree(BuildContext context){
    return GetBuilder<DinoJumpController>(
      builder:(controller) =>Container(
        key: controller.treeKey,
        child: Image.asset(
          'assets/images/tree.png',
          color: Colors.black.withOpacity(0.5),
          width:controller.treeWidth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget startGamePanel(){
    return GetBuilder<DinoJumpController>(
        builder:(controller)=> GestureDetector(
          onTap: (){
            controller.onGameStart();
          },
          child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Dino Jump Game',style:Theme.of(Get.context!).textTheme.titleLarge!.copyWith(color: Colors.grey),),
              const SizedBox(height: 15,),
              Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 decoration: BoxDecoration(
                   color: Colors.grey,
                   borderRadius: BorderRadius.circular(10)
                 ),
                  child: Text('Play',style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: Colors.white)))

          ],),
    ),
        ),
      );
  }

  Widget gameOverPanel(){
    return GetBuilder<DinoJumpController>(
      builder:(controller)=> Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Game Over!',style:Theme.of(Get.context!).textTheme.titleLarge!.copyWith(color: Colors.grey),),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                controller.onGameStart();
              },
              child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Play Again',style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: Colors.white))),
            )

          ],),
      ),
    );
  }

  Widget scorePanel(){
    return GetBuilder<DinoJumpController>(
        builder:(controller)=>Text('Score : ${controller.score}',style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: Colors.white),));
  }

}
