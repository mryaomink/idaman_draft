import 'package:flutter/material.dart';

// create global class to switch dynamic theme data for dark light mode

class AppTheme {
  ThemeData? themeData;
  bool isDakrMode;

  AppTheme({this.isDakrMode = false}) {
    themeData = isDakrMode ? ThemeData.dark() : ThemeData.light();
  }

  void switchDarkLightMode() {
    isDakrMode = !isDakrMode;
    themeData = isDakrMode ? ThemeData.dark() : ThemeData.light();
  }
}
