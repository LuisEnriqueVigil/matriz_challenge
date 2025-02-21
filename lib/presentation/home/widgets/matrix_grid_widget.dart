import 'package:flutter/material.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';

class MatrixGridWidget extends StatelessWidget {
  const MatrixGridWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: homeController.cantValuesOfMatriz,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount:homeController.cantValuesOfMatriz*homeController.cantValuesOfMatriz,
        itemBuilder: (context, index) {
        return Container(
          height: 10.0,width: 10.0,
          decoration: BoxDecoration(
            color: ColorsApp.colorPurple,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              homeController.matrixOfNumbersOutPut[index].toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
        },
      ),
    );
  }
}
