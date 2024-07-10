import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  List<String> l1 = [
    'assets/img/fb.bg.png',
    'assets/img/google.png',
    'assets/img/insta.png',
    'assets/img/tw.png',
    'assets/img/wp.png',
    'assets/img/yt.png',
    'assets/img/tg.png',
  ];
  List<String> l2 = [
    'Facebook',
    'Google',
    'Instagram',
    'Twitter',
    'WhatsApp',
    'YouTube',
    'Telegram',
  ];

  bool accept = false;
  int score = 0;
  bool gameOver = false;

  final Map<int, bool> matched = {};

  Map<int, bool> get getMatched => matched;

  int get getScore => score;

  bool get isGameOver => gameOver;

  bool matching(int index, String data) {
    if (l1[index] == data) {
      matched[index] = true;
      l1.removeAt(index);
      l2.removeAt(index);
      score += 10;
      checkGameOver();
      notifyListeners();
      return true;
    } else {
      score -= 5;
      notifyListeners();
      return false;
    }
  }

  void checkGameOver() {
    if (l1.isEmpty || l2.isEmpty) {
      gameOver = true;
      notifyListeners();
    }
  }
}
