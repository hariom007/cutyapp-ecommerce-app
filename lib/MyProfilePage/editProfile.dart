import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/wishlist_shopping1.png',color: AppColors.white_00,),
                          SizedBox(height: 15,),
                          Text('My WishList',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: AppColors.white_00,
                            child: Image.asset('assets/icon/team_circle.png',fit: BoxFit.fill,),
                          ),
                          SizedBox(height: 20,),
                          Text('Full Name',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontSize: 14,
                              fontFamily: 'Roboto-Thin',
                            fontWeight: FontWeight.bold
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
                                  contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                              ),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat-Semibold',
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700
                              ),

                            )
                          ),
                          SizedBox(height: 25,),
                          Text('Email',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontSize: 14,
                              fontFamily: 'Roboto-Thin',
                            fontWeight: FontWeight.bold
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
                                  contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                              ),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat-Semibold',
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700
                              ),

                            )
                          ),
                          SizedBox(height: 25,),
                          Text('Phone',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontSize: 14,
                              fontFamily: 'Roboto-Thin',
                            fontWeight: FontWeight.bold
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
                                  contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                              ),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat-Semibold',
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700
                              ),

                            )
                          ),
                          SizedBox(height: 35,),
                          Text('Change Password',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontSize: 20,
                                fontFamily: 'Roboto-regular',
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: 25,),
                          Text('New Password',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontSize: 14,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold
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
                                    contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                                ),
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Semibold',
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w700
                                ),

                              )
                          ),
                          SizedBox(height: 25,),
                          Text('Confirm Password',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontSize: 14,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold
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
                                    contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10)
                                ),
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat-Semibold',
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w700
                                ),

                              )
                          ),
                          SizedBox(height: 25,),

                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: width,
                        child: RaisedButton(
                          onPressed: (){
                          },
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: AppColors.white_00,
                          child: Text('UPDATE PROFILE',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Semibold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: AppColors.black
                              )
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 35,),

                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context,true);
              },
              child: Container(
                height: 60,
                width: 70,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon/Rectangle9.png'),
                    fit: BoxFit.fill
                  )
                ),
                child: Center(
                  child: Icon(Icons.arrow_back_ios_outlined,size: 20,color: AppColors.primaryBackGroundColor,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
