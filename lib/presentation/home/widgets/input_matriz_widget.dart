import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_delosi_app/common/theme/colors.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';

class InputMatrizWidget extends StatelessWidget {
  const InputMatrizWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Provider.of<HomeController>(context);
    
    return Expanded(
      child: Container(
        height: 40.0,
        padding: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: ColorsApp.colorPurple,
          border: Border.all(
            color: ColorsApp.colorBlue
          ),
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Center(
          child: TextFormField(
             controller: homeController.textEditingControllerInput,
             style: const TextStyle(
               fontSize: 20,
               color: ColorsApp.colorBlack,
               fontFamily: 'Roboto',
             ),
             onChanged: (value){
              debugPrint("value: ${homeController.textEditingControllerInput.text.toString()}");

             },
             keyboardType:const TextInputType.numberWithOptions(),
             decoration:  InputDecoration(
              counterText: '',
              isCollapsed: true,
              border: InputBorder.none,
              hintText: "Ingresar (ej: [1,2],[3,4])",
              hintStyle:  TextStyle(
                fontSize: FontSizeApp.fontSize16,
                color: ColorsApp.colorBlack,
              ),
             ),
          ),
        ),
      )
    );
  }
}