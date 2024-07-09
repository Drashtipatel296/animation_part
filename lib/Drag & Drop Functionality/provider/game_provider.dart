import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  late List<Map<String, dynamic>> data;
  late List<Map<String, dynamic>> data2;
  late bool gameOver;

  GameProvider(){
    remove();
  }

  void remove(){
    gameOver = false;
    data = [
      {'img': 'assets/img/fb.bg.png', 'name': 'Instagram','value' : 'Instagram',"accepting": false},
      {'img': 'assets/img/google.png', 'name': 'Telegram','value' : 'Telegram',"accepting": false},
      {'img': 'assets/img/insta.png', 'name': 'YouTube','value' : 'YouTube',"accepting": false},
      {'img': 'assets/img/tw.png', 'name': 'Google','value' : 'Google',"accepting": false},
      {'img': 'assets/img/wp.png', 'name': 'Facebook','value' : 'Facebook',"accepting": false},
      {'img': 'assets/img/yt.png', 'name': 'Twitter','value' : 'Twitter',"accepting": false},
      {'img': 'assets/img/tg.png', 'name': 'WhatsApp','value' : 'WhatsApp',"accepting": false},
    ];
    data2 = List<Map<String, dynamic>>.from(data);
    data.shuffle();
    data2.shuffle();
    notifyListeners();
  }

  void onAccept(Map<String, dynamic> item, Map<String, dynamic> receivedItem) {
    if (item["value"] == receivedItem["value"]) {
      data.remove(receivedItem);
      data2.remove(item);
    } else {

    }
    notifyListeners();
  }

  void onWillAccept(Map<String, dynamic> item, bool accepting) {
    item["accepting"] = accepting;
    notifyListeners();
  }

  void newGame() {
    remove();
  }

}
