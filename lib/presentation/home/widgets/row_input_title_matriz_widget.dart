import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';
import 'package:test_delosi_app/presentation/home/widgets/input_matriz_widget.dart';


class RowInputTitleMatrizWidget extends StatelessWidget {
  const RowInputTitleMatrizWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20.0,
      children: [
        TextWidgetApp(
          text: "Ingresar matriz", 
          fontSize: FontSizeApp.fontSize16, 
          fontWeight: FontWeight.bold, 
          colorText: ColorsApp.colorBlack
        ),
        InputMatrizWidget()
      ],
    );
  }
}
