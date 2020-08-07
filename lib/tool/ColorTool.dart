import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ColorTool {
  static Color randomColor() => colorList[Random().nextInt(colorList.length - 1)];

  static final List<Color> colorList = [
    Colors.orange,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.blue,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.red,
    Colors.redAccent,
    Colors.green,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.yellow,
    Colors.brown,
    Colors.cyan,
    Colors.teal,
    Colors.tealAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.deepPurple,
    Colors.deepPurpleAccent,
  ];
}
