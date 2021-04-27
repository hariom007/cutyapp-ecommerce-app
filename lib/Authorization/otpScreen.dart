import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController optController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: height,
              child: Column(
                children: [
                  SizedBox(height: 150,),
                  Center(
                    child: Text('Enter OTP',
                      style: TextStyle(
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 5),
                    child: PinCodeTextField(
                      controller: optController,
                      appContext: context,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      length:4,
                      keyboardType: TextInputType.phone,
                      autoDismissKeyboard: true,
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-SemiBold',
                      ),
                      backgroundColor: AppColors.primaryBackGroundColor,
                      autoFocus: false,
                      enablePinAutofill: true,
                      animationCurve: Curves.elasticOut,

                      pinTheme: PinTheme(
                          activeColor: AppColors.black,
                          inactiveColor: AppColors.white_00,
                          shape: PinCodeFieldShape.underline,
                          selectedColor: AppColors.white_00,
                          selectedFillColor: AppColors.grey_60,
                          borderRadius: BorderRadius.circular(5),
                          activeFillColor: AppColors.red_00
                      ),
                      animationType: AnimationType.scale,
                      animationDuration: Duration(milliseconds: 300),
                      // errorAnimationController: errorController, // Pass it here
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                            },
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'Didn\'t recieve Code ? ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat-semibold',
                                      color: AppColors.white_00,
                                    fontSize: 14
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Resend',
                                      style: TextStyle( color: AppColors.black, fontSize: 14),
                                    ),
                                    TextSpan(
                                      text: ' 60s',
                                      style: TextStyle( color: AppColors.white_00, fontSize: 14),
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(
                    onPressed: (){
                      MyNavigator.goToDashBoard(context);
                    },
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: AppColors.appColor3,
                    child: Text('Verify OTP',
                        style: TextStyle(
                            fontFamily: 'Montserrat-Semibold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.white_00
                        )
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 200,
                    width: width,
                    child: Image.asset(
                      'assets/icons/cuty4.png',
                      height: 200,width: 200,fit: BoxFit.contain,),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context,true);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.keyboard_arrow_left, color: Colors.white),
                    Text('Back',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat-SemiBold',
                          color: AppColors.white_00,
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
