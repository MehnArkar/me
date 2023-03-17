import 'package:get/get.dart';
import 'package:portfolio_v2/models/project.dart';

class DesktopWorkController extends GetxController{

  int currentIndex = 0;
  late Project currentProject;


  List<Project> projectList = [
    Project(name: 'Learn To Earn Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!. Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: ['assets/images/phone.png','assets/images/phone.png'], playStore: '', appStore: ''),
    Project(name: 'Getbak', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
    Project(name: 'Getbak Merchant', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
    Project(name: 'Fary', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
  ];

  @override
  void onInit() {
    currentProject = projectList[0];
    super.onInit();

  }





}