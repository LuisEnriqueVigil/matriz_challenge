import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';

class MessageTextVoidMatrixWidget extends StatelessWidget {
  const MessageTextVoidMatrixWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 200,
      child: TextWidgetApp(
       textAlign: TextAlign.center,
       text: "Ingresa valores para ver la matriz", 
       fontSize: FontSizeApp.fontSize16, 
       fontWeight: FontWeight.normal, 
       colorText: ColorsApp.colorBlack
      ),
    );
  }
}