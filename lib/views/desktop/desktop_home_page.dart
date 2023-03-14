import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      decoration:const BoxDecoration(
        color: AppColors.colorPrimary
      ),
      child: Column(
        children: [
          navBarPanel(context),
          Expanded(child: greetingPanel(context)),
          const SizedBox(height: 75,)
        ],
      ),
    );
  }

  Widget navBarPanel(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          eachNavItem('Home'),
          eachNavItem('Project'),
          eachNavItem('About'),
          eachNavItem('Contact'),

        ],
      ),
    );
  }

  eachNavItem(String title){
    Rx<bool> isHover = false.obs;
    return MouseRegion(
      onHover: (_){
       isHover.value= true;
      },
      onExit: (_){
        isHover.value= false;
      },
      child: Obx(
          ()=> Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          margin:const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color:isHover.value?AppColors.colorAccent:Colors.transparent,width: 2))),
          child:Text(title,style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(color:isHover.value?AppColors.textColor1:AppColors.textColor2 ),) ,
        ),
      ),
    );
  }

  Widget greetingPanel(BuildContext context){
    Rx<bool> isHoverButton = false.obs;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                        text: TextSpan(
                          text: 'Hi, I\'m ',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(height: 1.5),
                          children: [
                            TextSpan(text: 'Arkar Min',style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.colorAccent)),
                            TextSpan(
                                text: '\na ',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.5),
                                children: [
                              TextSpan(text: 'Mid-Level',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.colorAccent)),
                              TextSpan(text: ' Mobile Developer',style: Theme.of(context).textTheme.titleMedium),
                            ]),
                            TextSpan(
                                text: '\nwith a lot of experience! ',
                                style: Theme.of(context).textTheme.titleMedium,),
                          ]
                        ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                    Text('Stick around to see some of my work',style: Theme.of(context).textTheme.bodyMedium,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Obx(
                        ()=> MouseRegion(
                          onHover: (_){
                            isHoverButton.value= true;
                          },
                          onExit: (_){
                            isHoverButton.value= false;
                          },
                          child: Container(
                            padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                            decoration: BoxDecoration(
                              color: isHoverButton.value?AppColors.colorAccent:Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: AppColors.colorAccent,width: 2
                              )
                            ),
                            child: Text('See my work',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:isHoverButton.value? Colors.white:AppColors.colorAccent,fontWeight: FontWeight.w500),),
                          ),
                        )
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 1,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset('assets/images/vector_one.svg',width: MediaQuery.of(context).size.height*0.65,))),
        ],
      ),
    );
  }
}
