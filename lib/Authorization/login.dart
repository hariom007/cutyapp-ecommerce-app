import 'dart:ui';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:cutyapp/Authorization/otpScreen.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Country _country= CountryPickerUtils.getCountryByPhoneCode('974');

  TextEditingController mobileNumberController = TextEditingController();

  void _openCountryPickerDialog() => showDialog(
    context: context,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.pink),
      child: CountryPickerDialog(
        searchCursorColor: Colors.pinkAccent,
        divider: Divider(),
        searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            suffixIcon: Icon(Icons.search,color: AppColors.grey_10,),
            hintStyle: TextStyle(
                fontFamily: 'Montserrat-Semibold'
            )
        ),
        isSearchable: true,
        title: Text('Select your phone code',
          style: TextStyle(
              fontFamily: 'Montserrat-Semibold'
          ),),
        onValuePicked: (Country country) =>
            setState(() => _country = country),
        itemBuilder: (Country country){
          return Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(width: 8.0),
              Text("+${country.phoneCode}",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat-regular'
                ),),
              SizedBox(width: 8.0),
              Flexible(child: Text(country.name,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat-regular'
                ),))
            ],
          );
        },
        priorityList: [
          CountryPickerUtils.getCountryByIsoCode('QA'),
          CountryPickerUtils.getCountryByIsoCode('DE'),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: height,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height:height*0.135,),
                  Text('Login / Sign Up',
                    style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 20),
                  ),
                  SizedBox(height: 90,),
                  Text('Your Mobile Number',
                    style: TextStyle(
                        fontFamily: 'Montserrat-Thin',
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(height: 13,),
                  Container(
                    height: 45,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        elevation: 2.0,
                        color: AppColors.white_00,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColors.appColor2,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                                )
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    decoration: BoxDecoration(

                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        // _openCountryPickerDialog();
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            height: 30.0,
                                            child: Image.asset('assets/icons/qatar.png'),
                                          ),
                                          Text("  +974   ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: AppColors.black,
                                                fontFamily: 'Monteserrat-Semibold'
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                autofocus: false,
                                // validator: validateMobile,
                                keyboardType: TextInputType.phone,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                controller: mobileNumberController,
                                decoration: InputDecoration(
                                    // hintText: "Enter Mobile number",
                                    isDense: true,
                                   /* hintStyle: TextStyle(
                                        color: AppColors.grey_20,
                                        fontFamily: 'Montserrat-Semibold',
                                        fontSize: 14
                                    ),*/
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                                ),
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Semibold',
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w700
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPScreen()));
                    },
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: AppColors.appColor3,
                    child: Text('LOGIN',
                        style: TextStyle(
                            fontFamily: 'Montserrat-Semibold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          color: AppColors.white_00
                        )
                    ),
                  ),
                  Spacer(),
                  Image.asset('assets/icons/cuty3.png',height: height*0.2,width: 200,fit: BoxFit.fill,)
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
