import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/models/project.dart';

class DesktopWorkController extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController;
  int currentIndex = 0;
  late Project currentProject;


  List<Project> projectList = [
    Project(name: 'Learn To Earn Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
    Project(name: 'Fary', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
    Project(name: 'Getbak', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
    Project(name: 'Pocket Nicotine', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
  ];

  @override
  void onInit() {
    animationController = AnimationController(vsync: this,duration:const Duration(milliseconds: 500))..forward();

    currentProject = projectList[0];
    super.onInit();
  }

  onClickNextAndPerious(bool isNext){
    if(isNext){
      if(currentIndex<projectList.length-1){
        currentIndex+=1;
        currentProject=projectList[currentIndex];
        update();
        animationController.reset();
        animationController.forward();
      }
    }else{
      if(currentIndex>0){
        currentIndex-=1;
        currentProject=projectList[currentIndex];
        update();
        animationController.reset();
        animationController.forward();
      }
    }


  }





}