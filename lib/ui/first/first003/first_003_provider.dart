import 'dart:async';

import 'package:flutter/material.dart';

class First003Provider extends ChangeNotifier {
  Timer _timer;
  double gameTime = 0.0;
  String test = '这是测试数据';

  int crossAxisCount = 2;
  int maxNum;
  List<int> defaultNumList = [];
  int currentNum = 1;

  First003Provider() {
    maxNum = crossAxisCount * crossAxisCount;

    List.generate(maxNum, (index) {
      defaultNumList.add(index + 1);
    });
    defaultNumList.shuffle(); // 将数据打乱
  }

  /// 开始计时
  startTime() {
    if (_timer == null)
      _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        gameTime += 0.1;
        notifyListeners();
      });
  }

  /// 重新开始一局游戏
  restartGame() {
    currentNum = 1;
    gameTime = 0;
    notifyListeners();
  }

  againGame() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    currentNum = 1;
    gameTime = 0;
    crossAxisCount = 2;
    defaultNumList.clear();
    List.generate(maxNum, (index) {
      defaultNumList.add(index + 1);
    });
    defaultNumList.shuffle();

    notifyListeners();
  }

  /// 暂停游戏
  pauseGame() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    notifyListeners();
  }

  /// 切换难度
  switchDiff() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    currentNum = 1;
    gameTime = 0;
    crossAxisCount++;
    if (crossAxisCount > 6) {
      crossAxisCount = 2;
    }
    maxNum = crossAxisCount * crossAxisCount;
    defaultNumList.clear();
    List.generate(maxNum, (index) {
      defaultNumList.add(index + 1);
    });
    defaultNumList.shuffle();
    notifyListeners();
  }
}
