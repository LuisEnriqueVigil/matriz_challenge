import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';


class ButtonRotateMatrixWidget extends StatelessWidget {
  const ButtonRotateMatrixWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        FocusScope.of(context).unfocus(); 
        homeController.generateMatrix();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0
        ),
        decoration: BoxDecoration(
          color: ColorsApp.colorBlue,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: TextWidgetApp(
         textAlign: TextAlign.center,
         text: "Rotar matriz", 
         fontSize: FontSizeApp.fontSize16, 
         fontWeight: FontWeight.bold, 
         colorText: ColorsApp.colorBlack
        ),
      ),
    );
  }
}
