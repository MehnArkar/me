import 'package:get/get.dart';
import 'package:portfolio_v2/views/games/dino_jumb/dino_jumb_game.dart';
import 'package:portfolio_v2/views/games/skm_game/skm_page.dart';
import '../../models/game.dart';

class DesktopGameController extends GetxController{
  List<Game> gameList =[
    Game(name: 'Dino Jumb', image: 'assets/images/dino_game.png', sourceCode: '', page: const DinoJumbGame()),
    Game(name: 'Shan Koe Mee', image: 'assets/images/skm_game.png', sourceCode: '', page: const ShanKoeMeeGame()),
  ];

}