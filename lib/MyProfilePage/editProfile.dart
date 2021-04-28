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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false, // hides leading widget
          flexibleSpace: Container(
            width: width,
            color: AppColors.primaryBackGroundColor,
            child: Row(
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
                  padding: const EdgeInsets.only(right: 60.0,top: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/person.png',
                        height: 35.0,width: 35.0,
                      ),
                      SizedBox(height: 5,),
                      Text('Profile',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto-Light',
                      ),),

                    ],
                  ),
                ),
                Expanded(child: Container()),

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
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/icon/team_circle.png'),
                                    fit: BoxFit.fill
                                  ),
                                  border: Border.all(color: AppColors.black,width: 0.5)
                              ),
                              height: 110,
                              width: 110,
                              child: Container(
                                height: 20,
                                alignment: Alignment.centerRight,
                                width: 20,
                                transform: Matrix4.translationValues(5,-30,0),
                                child: CircleAvatar(
                                  radius: 15.0,
                                  backgroundColor: AppColors.white_00,
                                  child: Icon(Icons.edit_outlined,color: AppColors.black,size: 20,),
                                ),
                              ),
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



                    SizedBox(height: 35,),

                  ],
                ),
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
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: AppColors.white_00,
                  child: Text('UPDATE PROFILE',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Medium'
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
