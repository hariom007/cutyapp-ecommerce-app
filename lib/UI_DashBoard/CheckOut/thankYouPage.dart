import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/cuty1.png',height: height*0.3,fit: BoxFit.fill,),
            SizedBox(height: height*0.06,),
            Text('We recieved your order.',
            style: TextStyle(
              fontFamily: 'Montserrat-thin',
              fontWeight: FontWeight.bold,
              fontSize: 14.0
            ),),
            SizedBox(height: height*0.02,),
            Text('Thank You!',
            style: TextStyle(
              fontFamily: 'Montserrat-thin',
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),),
            SizedBox(height: height*0.08,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: width,
                child: RaisedButton(
                  color: AppColors.white_00,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: (){
                    MyNavigator.goToDashBoard(context);
                  },
                  child: Text('VIEW ORDERS',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Medium'
                    ),),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: width,
                child: RaisedButton(
                  color: AppColors.white_00,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: (){
                    MyNavigator.goToDashBoard(context);
                  },
                  child: Text('GO BACK TO HOMEPAGE',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Medium'
                    ),),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: width,
                child: RaisedButton(
                  color: AppColors.appColor47,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: (){
                    MyNavigator.goToDashBoard(context);
                  },
                  child: Text('CONTACT US ON WHATSAPP',
                    style: TextStyle(
                        color: AppColors.white_00,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Medium'
                    ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
