
import 'package:flutter/material.dart';

class TextWidgetApp extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color colorText; 
  final TextAlign? textAlign;

  const TextWidgetApp({
    super.key, 
    required this.text, 
    required this.fontSize, 
    required this.fontWeight,
    required this.colorText,
    this.textAlign = TextAlign.start
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colorText
      ),
    );
  }
}