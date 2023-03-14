import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/utils/Responsive/responsive.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';
import 'package:portfolio_v2/views/desktop/desktop_home_page.dart';
import 'package:portfolio_v2/views/global/super_scaffold.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      body: ListView(
        children: [
          const Responsive(desktop:DesktopHomePage(),),
          Responsive(desktop: Container(width: Get.width,height: Get.height,),)
        ],
      )
    );
  }
}
