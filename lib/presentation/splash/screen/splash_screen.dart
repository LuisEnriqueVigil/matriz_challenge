import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_delosi_app/common/theme/font_size.dart';
import 'package:test_delosi_app/common/widgets/text_widget_app.dart';
import 'package:test_delosi_app/domain/controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   WidgetsBinding.instance.addPostFrameCallback((_){  
   SplashController splashController = Provider.of<SplashController>(context,listen: false);
      if(mounted){
        splashController.checkLoginDelay(context);
      }
    }) ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgetApp(
              text: "Bienvenido Delosi App", 
              fontSize: FontSizeApp.fontSize24, 
              fontWeight: FontWeight.bold, 
              colorText: Colors.black
            ),
            const SizedBox(height: 20.0),
            CircularProgressIndicator(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}