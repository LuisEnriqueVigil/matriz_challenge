
import 'package:flutter/material.dart';
import 'package:test_delosi_app/domain/routes/routes_name.dart';

class SplashController with ChangeNotifier{
  Future checkLoginDelay(BuildContext context)async{
    await Future.delayed(const Duration(milliseconds: 2000));
    if(context.mounted){
      return Navigator.pushReplacementNamed(context, RoutesName.home);
    }
  }
}