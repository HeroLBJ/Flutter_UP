import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_up/tool/provider/ThemeProvider.dart';
import 'package:provider/provider.dart';

class ColorTool {
  static BuildContext _context;

  static init(BuildContext context) {
    _context = context;
  }

  static Color randomColor() =>
      colorList[Random().nextInt(colorList.length - 1)];

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

  static Color black3_9 = _switchColor('black3_9');

  static Color _switchColor(String name) {
    ThemeType themeType = Provider.of<ThemeProvider>(_context).getThemeType();
    Color resultColor;
    switch (name) {
      case 'black3_9':
        resultColor = themeType == ThemeType.LIGHT
            ? Color(0xff333333)
            : Color(0xff999999);
        break;
      default:
        resultColor = Colors.transparent;
        break;
    }
    return resultColor;
  }
}
