import 'package:flutter/material.dart';

class MyNavigator{

  static void goToDashBoard(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/dashBoard', (route) => false);
  }
  static void goToIntroScreen(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/introScreen', (route) => false);
  }

  static void goToLoginPage(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/loginscreen', (route) => false);
  }

  static void goToSplashScreen(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/splashscreen', (route) => false);
  }

  static void goToHomePage(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/homePage', (route) => false);
  }

  static void goToSelectLanguage(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/selectLanguage', (route) => false);
  }

}