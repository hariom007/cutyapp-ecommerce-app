import 'package:cutyapp/MyProfilePage/OrderHistory/orderHistoryList.dart';
import 'package:cutyapp/MyProfilePage/editProfile.dart';
import 'package:cutyapp/MyProfilePage/termsCondtion.dart';
import 'package:cutyapp/SplashScreen/splashscreen.dart';
import 'package:cutyapp/UI_DashBoard/dashBoard.dart';
import 'package:flutter/material.dart';
import 'Authorization/select_language.dart';
import 'Values/AppColors.dart';

void main() {
  runApp(CutyApp());
}

class CutyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: TermsConditions(),
      title: 'Cuty App',
      theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.primaryBackGroundColor,
          primaryIconTheme: IconThemeData(color: AppColors.white_00),
          iconTheme: new IconThemeData(color: AppColors.white_00),
          primaryTextTheme: TextTheme(
            headline6: TextStyle(
              color: AppColors.white_00,
              fontFamily: 'Roboto-medium',
              fontSize: 16,
            ),
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: AppColors.white_00,
              fontFamily: 'Roboto-Medium',
            ),
            bodyText2: TextStyle(
                fontFamily: 'Roboto-Regular',
                color: AppColors.white_00
            ),
            headline1: TextStyle(
                fontFamily: 'Roboto-Black',
                color: AppColors.grey_90
            ),
          )
      ),
      routes: <String,WidgetBuilder>{
        // '/loginscreen' : (BuildContext context) => LoginPage(),
        '/dashBoard' : (BuildContext context) => DashBoard(),
        // '/introScreen' : (BuildContext context) => IntroScreen(),
        // '/homePage':  (BuildContext context) => HomePage(),
        '/selectLanguage':  (BuildContext context) => SelectLanguage(),
      },
    );
  }
}