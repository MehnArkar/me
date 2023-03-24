import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_v2/utils/constants/app_colors.dart';
import 'package:portfolio_v2/views/games/dino_jumb/dino_jumb_game.dart';
import 'package:portfolio_v2/views/global/super_scaffold.dart';
import 'package:portfolio_v2/views/main_screen/main_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'My Portfolio',
        debugShowCheckedModeBanner: false,
        navigatorObservers: <NavigatorObserver>[routeObserver],
      theme: ThemeData(
          fontFamily: 'Poppins',
          fontFamilyFallback:const ['Book'],
          textTheme: TextTheme(
            titleLarge:const TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color:Colors.white,fontFamily: 'Poppins', fontFamilyFallback: ['Book'],),
            titleMedium:const TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color:Colors.white,fontFamily: 'Poppins', fontFamilyFallback: ['Book'],),
            bodyMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:AppColors.textColor1,fontFamily: 'Poppins', fontFamilyFallback: ['Book'],),
            bodySmall: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color:Colors.white.withOpacity(0.5),fontFamily: 'Poppins', fontFamilyFallback: ['Book'],),
       )
      ),
      home: const MainPage()
    );
  }

}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DinoJumbGame();
  }
}


