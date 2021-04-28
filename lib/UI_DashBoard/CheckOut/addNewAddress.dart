
// class AddNewAddress extends StatefulWidget {

import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatefulWidget {
  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class RadioData {
  int id;
  String displayId;

  RadioData({
    this.id,
    this.displayId,
  });

  factory RadioData.fromJson(Map<String, dynamic> json) => RadioData(
    id: json["id"] == null ? null : json["id"],
    displayId: json["displayId"] == null ? null : json["displayId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "displayId": displayId == null ? null : displayId,
  };
}


class _AddNewAddressState extends State<AddNewAddress> {

  int selectedRadio = 0;


  List<RadioData> radioDataList = [
    new RadioData(id: 1, displayId: 'Sub-Category 1'),
  ];


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false, // hides leading widget
          flexibleSpace: Container(
            width: width,
            color: AppColors.primaryBackGroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context,true);
                        },
                        child: Container(
                          height: 60.0,
                          width: 65.0,
                          transform: Matrix4.translationValues(-3.0, 0, 0),
                          child: Center(
                            child:Image.asset('assets/icons/back_arrrow.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0,top: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/checkout.png',height: 35.0,width: 35.0,),
                          SizedBox(height: 5,),
                          Text('Checkout',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ),
                    Expanded(child: Container()),

                  ],
                ),
                SizedBox(height: 5.0,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: AppColors.white_00,
                                  child: Text('1',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.appColor40,
                                        fontFamily: 'roboto-regular'
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Info',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'roboto-light'
                                  ),)
                              ],
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: AppColors.white_00,
                                  child: Text('2',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.appColor40,
                                        fontFamily: 'roboto-regular'
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Address',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'roboto-light'
                                  ),)
                              ],
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          radius: 4.0,
                          backgroundColor: AppColors.white_00,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: AppColors.appColor23,
                                  child: Text('3',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Payment',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'roboto-light'
                                  ),)
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: SingleChildScrollView(
              child: Container(
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0,),
                    Center(
                      child: Text('Enter Your National Address',style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto-Bold'
                      ),),
                    ),
                    SizedBox(height: 20.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.appColor8,
                                  borderRadius: BorderRadius.circular(2.0)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Building Number',
                                    style: TextStyle(
                                        color: AppColors.white_00,
                                        fontSize: 14,
                                        fontFamily: 'Roboto-Light',
                                    ),),
                                  SizedBox(height: 15,),
                                  Material(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                      ),
                                      elevation: 2.0,
                                      color: AppColors.white_00,
                                      child: TextField(
                                        autofocus: false,
                                        // validator: validateMobile,
                                        keyboardType: TextInputType.phone,
                                        // controller: mobileNumberController,
                                        decoration: InputDecoration(
                                          // hintText: "Enter Mobile number",
                                            isDense: true,
                                            /* hintStyle: TextStyle(
                                              color: AppColors.grey_20,
                                              fontFamily: 'Montserrat-Semibold',
                                              fontSize: 14
                                          ),*/
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(vertical: 13.0,horizontal: 10)
                                        ),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Montserrat-Semibold',
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w700
                                        ),

                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.0,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                          color: AppColors.appColor8,
                                          borderRadius: BorderRadius.circular(2.0)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Zone',
                                            style: TextStyle(
                                                color: AppColors.white_00,
                                                fontSize: 14,
                                                fontFamily: 'Roboto-Light',
                                            ),),
                                          SizedBox(height: 15,),
                                          Material(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              elevation: 2.0,
                                              color: AppColors.white_00,
                                              child: TextField(
                                                autofocus: false,
                                                // validator: validateMobile,
                                                keyboardType: TextInputType.phone,
                                                // controller: mobileNumberController,
                                                decoration: InputDecoration(
                                                  // hintText: "Enter Mobile number",
                                                    isDense: true,
                                                    /* hintStyle: TextStyle(
                                              color: AppColors.grey_20,
                                              fontFamily: 'Montserrat-Semibold',
                                              fontSize: 14
                                          ),*/
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.symmetric(vertical: 13.0,horizontal: 10)
                                                ),
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Montserrat-Semibold',
                                                    color: AppColors.black,
                                                    fontWeight: FontWeight.w700
                                                ),

                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                ),
                                SizedBox(width: 7.0,),
                                Expanded(
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                      color: AppColors.appColor8,
                                        borderRadius: BorderRadius.circular(2.0)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Street',
                                            style: TextStyle(
                                                color: AppColors.white_00,
                                                fontSize: 14,
                                                fontFamily: 'Roboto-Light',
                                            ),),
                                          SizedBox(height: 15,),
                                          Material(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              elevation: 2.0,
                                              color: AppColors.white_00,
                                              child: TextField(
                                                autofocus: false,
                                                // validator: validateMobile,
                                                keyboardType: TextInputType.phone,
                                                // controller: mobileNumberController,
                                                decoration: InputDecoration(
                                                  // hintText: "Enter Mobile number",
                                                    isDense: true,
                                                    /* hintStyle: TextStyle(
                                              color: AppColors.grey_20,
                                              fontFamily: 'Montserrat-Semibold',
                                              fontSize: 14
                                          ),*/
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.symmetric(vertical: 13.0,horizontal: 10)
                                                ),
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Montserrat-Semibold',
                                                    color: AppColors.black,
                                                    fontWeight: FontWeight.w700
                                                ),

                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    )

                  ],
                )
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            child: Container(
              width: width,
              color: AppColors.primaryBackGroundColor,
              height: 70.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                child: RaisedButton(
                  onPressed: (){
                    MyNavigator.goToDashBoard(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: AppColors.white_00,
                  child: Text('SAVE',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Bold'
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


