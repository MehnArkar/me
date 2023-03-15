import 'package:get/get.dart';
import 'package:portfolio_v2/models/project.dart';

class DesktopWorkController extends GetxController{

  int currentIndex = 0;
  late Project currentProject;


  List<Project> projectList = [
    Project(name: 'L2E Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
    Project(name: 'L2E Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
    Project(name: 'L2E Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
    Project(name: 'L2E Myanmar', description: 'Thist is the description of the app. This description is only for testing.I\'ll update it later. Looking forward!', images: [], playStore: '', appStore: ''),
  ];

  @override
  void onInit() {
    currentProject = projectList[0];
    super.onInit();

  }





}