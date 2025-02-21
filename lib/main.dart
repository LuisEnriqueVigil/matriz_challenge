import 'package:flutter/material.dart';
import 'package:test_delosi_app/domain/controllers/home_controller.dart';
import 'package:test_delosi_app/domain/controllers/splash_controller.dart';
import 'package:test_delosi_app/domain/routes/routes_app.dart';
import 'package:test_delosi_app/domain/routes/routes_name.dart';
import 'package:provider/provider.dart';

void main() { 
  runApp(
    MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (_)=> SplashController()),
         ChangeNotifierProvider(create: (_)=> HomeController()),
      ],
      
    child: MyApp()
    ),
  );
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delosi app',
      routes: RoutesApp.routesDefine,
      initialRoute: RoutesName.splash,
    );
  }
}