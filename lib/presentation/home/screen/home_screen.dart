import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';
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
              TextWidgetApp(
                text: "Bienvenido", 
                fontSize: FontSizeApp.fontSize20, 
                fontWeight: FontWeight.bold, 
                colorText: ColorsApp.colorBlack
              ),
              RowInputTitleMatrizWidget(),              
              InkWell(
                onTap: (){
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
              ),
              (homeController.cantValuesOfMatriz==0)?
                 SizedBox(
                  width: 200,
                   child: TextWidgetApp(
                    textAlign: TextAlign.center,
                    text: "Ingresa valores para ver la matriz", 
                    fontSize: FontSizeApp.fontSize16, 
                    fontWeight: FontWeight.normal, 
                    colorText: ColorsApp.colorBlack
                   ),
                 ):
                Expanded(
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
                          "0.0",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
