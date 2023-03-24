import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/controllers/desktop/desktop_game_controller.dart';
import 'package:portfolio_v2/models/game.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';

class DesktopGamePage extends StatelessWidget {
  const DesktopGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DesktopGameController());
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.08,vertical: MediaQuery.of(context).size.height*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titlePanel(context),
          Expanded(child: gameListPanel(context))
        ],
      ),
    );
  }

  Widget titlePanel(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Divider
            Container(
              width:MediaQuery.of(context).size.width*0.05,
              height: 3,
              decoration: BoxDecoration(
                  color: AppColors.colorAccent,
                  borderRadius: BorderRadius.circular(3)
              ),
            ),
            const SizedBox(width: 30,),
            Text('Games',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        Text('Getting bored?\nLet\'s play some games',style: Theme.of(context).textTheme.titleMedium,),
      ],
    );
  }

  Widget gameListPanel(BuildContext context){
    return GetBuilder<DesktopGameController>(
      builder:(controller)=> Center(
        child: Container(
          height: MediaQuery.of(context).size.width*0.2,
          width: double.maxFinite,
          alignment: Alignment.center,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.gameList.length,
              itemBuilder: (context,index)=>eachGame(context,controller.gameList[index])
          ),
        ),
      ),
    );
  }

  Widget eachGame(BuildContext context,Game game){
    Rx<bool> isHover = false.obs;
    Rx<double> yAxis = 0.0.obs;
   return  GestureDetector(
       onTap: (){
         Get.to(game.page);
       },
       child: Container(
         margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.025),
         child: Column(
           children: [
                Obx(()=> MouseRegion(
                  onHover: (_){
                    isHover.value=true;
                    yAxis.value=10;
                  },
                  onExit: (_){
                    isHover.value =false;
                    yAxis.value=0;
                  },
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0,end: yAxis.value),
                    duration: const Duration(milliseconds: 300),
                    builder:(context,value,child)=> Transform.translate(
                      offset: Offset(0, -value),
                      child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width*0.25,
                                  height: MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage(game.image),fit: BoxFit.cover)
                                  ),
                              ),
                              if(isHover.value)
                              Container(
                                width: MediaQuery.of(context).size.width*0.25,
                                height: MediaQuery.of(context).size.width*0.15,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color:AppColors.colorComponent.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(20),
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(game.page);
                                  },
                                  child: Container(
                                    padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                    decoration: BoxDecoration(
                                      color: AppColors.colorAccent,
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Text('Play',style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color: Colors.white),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
                ),
             Expanded(child: Center(
               child: Obx(()=> Text(game.name,style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: isHover.value?AppColors.colorAccent:Colors.white),)),
             ))

           ],
         ),
       ),
     );

  }

}
