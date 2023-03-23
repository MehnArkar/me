import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/controllers/desktop/desktop_work_controller.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopWorkPage extends StatelessWidget {
  const DesktopWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DesktopWorkController());
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.08,vertical: MediaQuery.of(context).size.height*0.05),
      // decoration:const BoxDecoration(
      //   color: AppColors.colorSecondary
      // ),
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
      builder:(controller)=> AnimatedBuilder(
        animation: controller.animationController,
        builder:(context,child)=> Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Next panel
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){
                      controller.onClickNextAndPerious(false);
                    },
                    child: Container(
                     padding:const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      color:controller.currentIndex==0?AppColors.colorComponent: AppColors.colorAccent,
                      child:const Icon(Icons.arrow_back_ios_rounded,size:15,color: Colors.white,),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Text('0${controller.currentIndex+1} / 0${controller.projectList.length}',style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.w700),overflow: TextOverflow.ellipsis,),
                  const SizedBox(width: 15,),
                  GestureDetector(
                    onTap: (){
                      controller.onClickNextAndPerious(true);
                    },
                    child: Container(
                      padding:const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      color:controller.currentIndex+1==controller.projectList.length?AppColors.colorComponent: AppColors.colorAccent,
                      child:const RotatedBox(quarterTurns: 2, child:  Icon(Icons.arrow_back_ios_rounded,size: 15,color: Colors.white,)),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(Get.context!).size.height*0.05,),
              Transform.translate(
                  offset: Offset(20-(20*controller.animationController.value), 0),
                  child: Opacity(
                      opacity: controller.animationController.value,
                      child: Text(controller.currentProject.name,style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: Colors.white),))),
              SizedBox(height: MediaQuery.of(Get.context!).size.height*0.05,),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width:MediaQuery.of(Get.context!).size.width*0.025,
                    height: 3,
                    decoration: BoxDecoration(
                        color: AppColors.colorAccent,
                        borderRadius: BorderRadius.circular(3)
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Text('About this project',style: Theme.of(Get.context!).textTheme.bodyMedium,),


                ],
              ),
              SizedBox(height: MediaQuery.of(Get.context!).size.height*0.025,),
              SizedBox(
                height: MediaQuery.of(Get.context!).size.height*0.15,
                child: Transform.translate(
                    offset: Offset(20-(20*controller.animationController.value), 0),
                    child: Opacity(
                        opacity: controller.animationController.value,
                        child: Text(controller.currentProject.description,style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(height: 1.8),))),
              ),
              SizedBox(height: MediaQuery.of(Get.context!).size.height*0.05,),
              downloadButtonPanel()



            ],
          ),
        ),
      ),
    );
  }

  downloadButtonPanel(){
    Rx<bool> isHoverAppStore = false.obs;
    Rx<bool> isHoverPlayStore = false.obs;
   return GetBuilder<DesktopWorkController>(
     builder:(controller)=> Row(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         if(controller.currentProject.appStore.isNotEmpty)
         Obx(
                  ()=> MouseRegion(
                onHover: (_){
                  isHoverAppStore.value= true;
                },
                onExit: (_){
                  isHoverAppStore.value= false;
                },
                child: GestureDetector(
                  onTap: () async{
                    await launchUrl(Uri.parse(controller.currentProject.appStore));
                  },
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                    decoration: BoxDecoration(
                        color: isHoverAppStore.value?AppColors.colorAccent:Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: AppColors.colorAccent,width: 2
                        )
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icons/ios.svg',width: 15,color: isHoverAppStore.value?Colors.white:AppColors.colorAccent,),
                        const SizedBox(width: 15,),
                        Text('App Store',style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color:isHoverAppStore.value? Colors.white:AppColors.colorAccent,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
              )
          ),
         if(controller.currentProject.appStore.isNotEmpty)
         const SizedBox(width: 30,),
         if(controller.currentProject.playStore.isNotEmpty)
         Obx(()=> MouseRegion(
               onHover: (_){
                 isHoverPlayStore.value= true;
               },
               onExit: (_){
                 isHoverPlayStore.value= false;
               },
               child: GestureDetector(
                 onTap: () async{
                   await launchUrl(Uri.parse(controller.currentProject.playStore));
                 },
                 child: Container(
                   padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                   decoration: BoxDecoration(
                       color: isHoverPlayStore.value?AppColors.colorAccent:Colors.transparent,
                       borderRadius: BorderRadius.circular(5),
                       border: Border.all(
                           color: AppColors.colorAccent,width: 2
                       )
                   ),
                   child: Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       SvgPicture.asset('assets/icons/android.svg',width: 15,color: isHoverPlayStore.value?Colors.white:AppColors.colorAccent,),
                       const SizedBox(width: 15,),
                       Text('Play Store',style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color:isHoverPlayStore.value? Colors.white:AppColors.colorAccent,fontWeight: FontWeight.w500),),
                     ],
                   ),
                 ),
               ),
             )
         ),
       ],
     ),
   );
  }

  Widget projectPrototypePanel(){
    return
      GetBuilder<DesktopWorkController>(
        builder:(controller)=> AnimatedBuilder(
          animation: controller.animationController,
          builder:(context,child)=> Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(60),
          child:
          LayoutBuilder(
            builder: (context , contraints )=>SizedBox(
              width: contraints.maxWidth,
              height: contraints.maxHeight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform(
                      origin: Offset(contraints.maxHeight/16*9,contraints.maxHeight),
                      transform:Matrix4.translationValues(controller.animationController.value*50, 0, 0)..rotateZ(d2r(controller.animationController.value* 10)),
                      child: AspectRatio(
                          aspectRatio: 9/16,
                          child: Image.asset(controller.currentProject.images[1],height: contraints.maxHeight,fit: BoxFit.cover,))),

                  Transform(
                      origin: Offset(0,contraints.maxHeight),
                      transform:Matrix4.rotationZ(d2r(controller.animationController.value*(-10))),
                      child: AspectRatio(
                          aspectRatio: 9/16,
                          child: Image.asset(controller.currentProject.images[0],height: contraints.maxHeight,fit: BoxFit.cover,))),


                ],
              ),
            ),

          )
    ),
        ),
      );
  }
  
  
  double d2r(double d){
    double r =(d*pi)/180;
    return r;
  }

}
