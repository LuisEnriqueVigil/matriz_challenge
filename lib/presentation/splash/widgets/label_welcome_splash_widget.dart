import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';

class LabelWelcomeSplashWidget extends StatelessWidget {
  const LabelWelcomeSplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidgetApp(
      text: "Bienvenido Delosi App", 
      fontSize: FontSizeApp.fontSize24, 
      fontWeight: FontWeight.bold, 
      colorText: Colors.black
    );
  }
}