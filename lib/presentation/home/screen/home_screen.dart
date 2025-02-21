import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';
import 'package:test_delosi_app/presentation/home/widgets/button_rotate_matrix_widget.dart';
import 'package:test_delosi_app/presentation/home/widgets/label_welcome_widget.dart';
import 'package:test_delosi_app/presentation/home/widgets/matrix_grid_widget.dart';
import 'package:test_delosi_app/presentation/home/widgets/message_text_void_matrix_widget.dart';
import 'package:test_delosi_app/presentation/home/widgets/row_input_title_matriz_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Provider.of<HomeController>(context);
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsApp.colorBackground,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20.0,
            children: [
              const SizedBox(height: 20.0),
              LabelWelcomeWidget(),
              RowInputTitleMatrizWidget(),              
              ButtonRotateMatrixWidget(homeController: homeController),
              (homeController.cantValuesOfMatriz==0)?
                MessageTextVoidMatrixWidget():
                MatrixGridWidget(homeController: homeController),
            ],
          ),
        ),
      ),
    );
  }
}
