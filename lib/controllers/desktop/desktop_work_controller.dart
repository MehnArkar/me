import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/models/project.dart';

class DesktopWorkController extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController;
  int currentIndex = 0;
  late Project currentProject;

  List<Project> projectList = [
    Project(name: 'Fary Taxi', description: 'Fary Taxi is a taxi service application like Uber & Grab Taxi, that allows you to book on-demand, fixed fare taxi rides. This project is a significant challenge for me because I have to use technologies I haven\'t used before, such as web sockets to display the driver and user location on maps in real-time, Google ML Kit for Face ID user login, and error handling in different application states.', images: ['assets/images/mockup/fary1.png','assets/images/mockup/fary2.png'], playStore: 'https://play.google.com/store/apps/details?id=com.xsphere.fary_taxi_enduser', appStore: 'https://apps.apple.com/app/id1669442797'),
    Project(name: 'Fary Driver', description: 'Fary Driver application is Fary application for driver use. We used Socket-IO to send real time driver location update to server. Find the best ways and show polylines with customized animation on maps by using google map direction api. I\'ve to developed customize progress indicator and chart animation using Custom Paint as given by UI/UX designer.', images: ['assets/images/mockup/driver1.png','assets/images/mockup/driver2.png'], playStore: 'https://play.google.com/store/apps/details?id=com.xsphere.fary_taxi_driver', appStore: ''),
    Project(name: 'L2E Myanmar', description: 'One of the best E-learning platform app in Myanmar like Udemy. You can download lesson videos and learn it when your are offline.You can take test and get certificate when you watched all of the lessons.', images: ['assets/images/mockup/l2e1.png','assets/images/mockup/l2e2.png'], playStore: 'https://play.google.com/store/apps/details?id=com.xsphere.e_learning', appStore: 'https://apps.apple.com/us/app/l2e-myanmar/id1626038880'),
    Project(name: 'Getbak', description: 'Getbak is Myanmar\'s first redemption software to solve difficulties & problems of Lucky Draw program.We can eliminate all the current problems and issues regarding with Lucky Draws in Myanmar by using our Getbak Application.Easily check Lucky Draw coupons and codes within the app.', images: ['assets/images/mockup/getbak1.png','assets/images/mockup/getbak2.png'], playStore: 'https://bit.ly/getbakenduser', appStore: 'https://apps.apple.com/us/app/getbak/id1626010492'),
    Project(name: 'Getbak Merchant', description: 'Getbak Merchant app is getbak app for merchant use. User can withdraw coupon by scanning QR code. I developed this app from scratch and publishing on google playstore and apple app store.', images: ['assets/images/mockup/merchant1.png','assets/images/mockup/merchant2.png'], playStore: 'https://bit.ly/getbakmerchant', appStore: 'https://apps.apple.com/us/app/getbak-merchant/id1639292916'),
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