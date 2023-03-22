import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController{

  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  //   scrollController.addListener(() {
  //     int index = scrollController.position.pixels ~/MediaQuery.of(Get.context!).size.height;
  //     int reach = ((MediaQuery.of(Get.context!).size.height*index)+(MediaQuery.of(Get.context!).size.height*0.65)).toInt();
  //     int unReach =((MediaQuery.of(Get.context!).size.height*index)-(MediaQuery.of(Get.context!).size.height*0.65)).toInt();
  //     if(scrollController.position.pixels>reach){
  //       index+=1;
  //       scrollController.jumpTo(MediaQuery.of(Get.context!).size.height*index);
  //     }else if(scrollController.position.pixels<unReach){
  //         index-=1;
  //         scrollController.animateTo(MediaQuery.of(Get.context!).size.height*index, duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  //     }
  //   });
  }

}