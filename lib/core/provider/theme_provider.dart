import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;


  ThemeMode getMode(String value) {
    if (value == "light") {
      themeMode = ThemeMode.light;
      notifyListeners();
      return themeMode;
    }
    else {
      themeMode = ThemeMode.dark;
      print("theme mode is dark ") ;
      notifyListeners();
      return themeMode;

    }

  }



}
