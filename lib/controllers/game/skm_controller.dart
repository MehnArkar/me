import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

enum GameState{
  idle,
  playing,
  aiPlaying,
  showTime,
  finished
}


class SkmController extends GetxController{

  List<String> myCards = [];
  List<String> botCards = [];
  List<String> deck = [];

  GameState gameState = GameState.idle;

  Map<String,int> suitePower = {
    "S" : 4,
    "H" : 3,
    "D" : 2,
    "C" : 1
  };

  Map<String,int> valuePower = {
    "1" : 1,
    "2" : 2,
    "3" : 3,
    "4" : 4,
    "5" : 5,
    "6" : 6,
    "7" : 7,
    "8" : 8,
    "9" : 9,
    "0" : 10,
    "J" : 11,
    "Q" : 12,
    "K" : 13,
    "A" : 14,
  };

  @override
  void onInit() {
    super.onInit();
    initLoad();
  }

  Future<void> initLoad() async{
    initiateDeck();
  }

  void initiateDeck(){
    for (var eachValue in ['A',2,3,4,5,6,7,8,9,0,'J','Q','K']) {
      for (var eachSuit in ['S','H','D','C']) {
        deck.add(eachValue.toString() + eachSuit);
      }
    }
  }

  void startMatch(){

    gameState = GameState.playing;

    initiateDeck();
    myCards.clear();
    botCards.clear();

    //drawCard1
    int r1 = math.Random().nextInt(deck.length);
    String card1 = deck[r1];
    myCards.add(card1);
    deck.removeWhere((element) => element == card1);

    //drawCard2
    int r2 = math.Random().nextInt(deck.length);
    String card2 = deck[r2];
    botCards.add(card2);
    deck.removeWhere((element) => element == card2);

    //drawCard1
    int r3 = math.Random().nextInt(deck.length);
    String card3 = deck[r3];
    myCards.add(card3);
    deck.removeWhere((element) => element == card3);

    //drawCard2
    int r4 = math.Random().nextInt(deck.length);
    String card4 = deck[r4];
    botCards.add(card4);
    deck.removeWhere((element) => element == card4);

    update();
  }

  String nameToPath(String name){
    return "assets/images/cards_assets/$name.png";
  }

  void drawACard() async{
    gameState = GameState.aiPlaying;
    int r = math.Random().nextInt(deck.length);
    String card = deck[r];
    myCards.add(card);
    deck.removeWhere((element) => element == card);
    update();

    show();

  }


  bool willBotDraw(){
    int power = 0;

    for(var each in botCards){
      String number = each.characters.first;
      if(number == "A"){
        power = power + 1;
      }
      else if(number == "J" ||number == "Q"||number == "K"){

      }
      else{
        power = power + int.parse(number);
      }
    }

    power = power % 10;

    return power<5;

  }

  void botDrawACard(){
    int r = math.Random().nextInt(deck.length);
    String card = deck[r];
    botCards.add(card);
    deck.removeWhere((element) => element == card);
    update();
  }

  void show() async{
    gameState = GameState.aiPlaying;
    update();
    await Future.delayed(const Duration(milliseconds: 3000));
    if(willBotDraw()){
      botDrawACard();
    }

    gameState = GameState.showTime;
    update();

    checkWhoWin();

  }

  void checkWhoWin() async{

    int myPower = 0;
    int botPower = 0;

    for(var each in myCards){
      String number = each.characters.first;
      if(number == "A"){
        myPower = myPower + 1;
      }
      else if(number == "J" ||number == "Q"||number == "K"){

      }
      else{
        myPower = myPower + int.parse(number);
      }
    }
    myPower = myPower % 10;

    for(var each in botCards){
      String number = each.characters.first;
      if(number == "A"){
        botPower = botPower + 1;
      }
      else if(number == "J" ||number == "Q"||number == "K"){

      }
      else{
        botPower = botPower + int.parse(number);
      }
    }
    botPower = botPower % 10;

    if(myPower>botPower){
      showAlertDialog(title: 'You Win ! Great Job!');
    }
    else if(botPower>myPower){
      showAlertDialog(title: 'You Lose ! Try Again!');
    }
    else{
      //power draw , time to compare value and suite
      int myBiggestValuePower = 0;
      int botBiggestValuePower = 0;
      int myBiggestSuitePower = 0;
      int botBiggestSuitePower = 0;

      for(var each in myCards){

      }

      for(var each in botCards){

      }



    }


    gameState = GameState.finished;
    update();
  }

  void showAlertDialog({required String title}){
    Get.dialog(
      CupertinoAlertDialog(
        title: Text(title),
      )
    );
  }

}