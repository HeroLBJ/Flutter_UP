import 'package:flutter/material.dart';

class Third004Provider extends ChangeNotifier {
  int num = 0;
  int maxNum = 100;

  addNum() {
    num++;
    notifyListeners();
  }

  minus() {
    num--;
    notifyListeners();
  }
}
