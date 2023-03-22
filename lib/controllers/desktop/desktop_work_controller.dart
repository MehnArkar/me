import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/models/project.dart';

class DesktopWorkController extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController;
  int currentIndex = 0;
  late Project currentProject;


  List<Project> projectList = [
    Project(name: 'Fary Driver', description: 'The Fary application is similar to the Grab Taxi application. This project is a significant challenge for me because I have to use technologies I haven\'t used before, such as web sockets to display the driver and user location on maps in real-time, Google ML Kit for Face ID user login, and error handling in different application states.', images: ['assets/images/mockup/driver1.png','assets/images/mockup/driver2.png'], playStore: '', appStore: ''),
    Project(name: 'L2E Myanmar', description: 'One of the best E-learning platform app in Myanmar like Udemy. I developed this app from scratch and publishing app on Playstore and Appstore by myself.', images: ['assets/images/mockup/l2e1.png','assets/images/mockup/l2e2.png'], playStore: 'https://play.google.com/store/apps/details?id=com.xsphere.e_learning', appStore: 'https://apps.apple.com/us/app/l2e-myanmar/id1626038880'),
    Project(name: 'Getbak Merchant', description: 'Getbak Merchant app is getbak app for merchant use. User can withdraw coupon by scanning QR code. I developed this app from scratch and publishing on google playstore and apple app store.', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
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