import 'dart:async';

import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (){
      MyNavigator.goToSelectLanguage(context);
    });

  }

  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: Text('Cuty',
                style: TextStyle(
                    fontFamily: 'Parisienne-Regular',
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white_00
                ),),),
              SizedBox(height: 100,),
              Center(child: Image.asset('assets/icon/cuty.png',height: 250,width: 300,fit: BoxFit.fill,)),
            ],
          )
      ),
    );
  }
}