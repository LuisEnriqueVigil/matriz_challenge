import 'package:flutter/material.dart';

class ColorsApp {

  static final ColorsApp _colors = ColorsApp._internal();

  

  static const Color colorBackground = Colors.white;
  static const Color colorBlack = Colors.black;
  static Color colorPurple = Color(0xff6E428F).withOpacity(0.4);
  static const Color colorBlue = Color(0xff65A2D4);
  
  factory ColorsApp() {
    return _colors;
  }
  
  ColorsApp._internal();
}