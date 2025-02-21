import 'package:flutter/material.dart';
import 'package:test_delosi_app/domain/routes/routes_name.dart';
import 'package:test_delosi_app/presentation/home/screen/home_screen.dart';
import 'package:test_delosi_app/presentation/splash/screen/splash_screen.dart';

class RoutesApp {

  static Map<String,WidgetBuilder> routesDefine = {
        RoutesName.splash : (context)=> const SplashScreen(),
        RoutesName.home: (context) => const HomeScreen()
  };
}