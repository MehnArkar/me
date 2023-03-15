import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/controllers/desktop/desktop_work_controller.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';

class DesktopWorkPage extends StatelessWidget {
  const DesktopWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DesktopWorkController());
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.08,vertical: MediaQuery.of(context).size.height*0.05),
      decoration:const BoxDecoration(
        color: AppColors.colorSecondary
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titlePanel(context),
          Expanded(child: projectPanel())

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
            Text('Recent Work',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        Text('Hand-picked projects\nfor you to see.',style: Theme.of(context).textTheme.titleMedium,),
      ],
    );
  }

  Widget projectPanel(){
    return Row(
      children: [
        Flexible(
            flex: 1,
            child: aboutProjectPanel()),
        Flexible(
            flex: 1,
            child: projectPrototypePanel())
      ],
    );
  }

  Widget aboutProjectPanel(){
    return GetBuilder<DesktopWorkController>(
      builder:(controller)=> Container(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                 padding:const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  color:AppColors.colorComponent,
                  child:const Icon(Icons.arrow_back_ios_rounded,size:15,color: Colors.white,),
                ),
                const SizedBox(width: 15,),
                Text('0${controller.currentIndex+1} / 0${controller.projectList.length}',style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.w700),),
                const SizedBox(width: 15,),
                Container(
                  padding:const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  color:AppColors.colorComponent,
                  child:const RotatedBox(quarterTurns: 2, child:  Icon(Icons.arrow_back_ios_rounded,size: 15,color: Colors.white,)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget projectPrototypePanel(){
    return Container();
  }

}
