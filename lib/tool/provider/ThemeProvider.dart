import 'package:flutter/material.dart';

enum ThemeType { LIGHT, DARK }

class ThemeProvider extends ChangeNotifier {
  ThemeType _currentThemeType = ThemeType.LIGHT;
  ThemeData _currentThemeData;

  switchTheme() {
    if (_currentThemeType == ThemeType.LIGHT) {
      _currentThemeType = ThemeType.DARK;
      _currentThemeData = _darkTheme();
    } else {
      _currentThemeType = ThemeType.LIGHT;
      _currentThemeData = _lightTheme();
    }
    notifyListeners();
  }

  ThemeData getTheme() {
    if (_currentThemeData == null) {
      _currentThemeData = _lightTheme();
    }
    return _currentThemeData;
  }

  ThemeType getThemeType() {
    return _currentThemeType;
  }

  _darkTheme() {
    return ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.white,
        dividerColor: Color(0xffededed));
  }

  _lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.orange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
