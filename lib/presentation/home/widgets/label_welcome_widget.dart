import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';


class LabelWelcomeWidget extends StatelessWidget {
  const LabelWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidgetApp(
      text: "Bienvenido", 
      fontSize: FontSizeApp.fontSize20, 
      fontWeight: FontWeight.bold, 
      colorText: ColorsApp.colorBlack
    );
  }
}



