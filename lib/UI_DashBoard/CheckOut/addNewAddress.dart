import 'package:cutyapp/UI_DashBoard/CheckOut/savedAddress.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatefulWidget {
  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
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
                          Image.asset('assets/icon/checkout.png',),
                          SizedBox(height: 15,),
                          Text('Checkout',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
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
                                  radius: 30.0,
                                  backgroundColor: AppColors.appColor7,
                                  child: Text('1',
                                    style: TextStyle(
                                        fontSize: 18
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Info')
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
                                  radius: 30.0,
                                  backgroundColor: AppColors.white_00,
                                  child: Text('2',
                                    style: TextStyle(
                                        fontSize: 18
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Address')
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
                                  radius: 30.0,
                                  backgroundColor: AppColors.white_00,
                                  child: Text('3',
                                    style: TextStyle(
                                        fontSize: 18
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Text('Payment')
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60,),
                  Center(
                    child: Text('Enter Your National Address',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.appColor8,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Building Number',
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
                          Text('Zone',
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
                          Text('Street',
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: width,
                      child: RaisedButton(
                        color: AppColors.white_00,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SavedAddress()));
                        },
                        child: Text('Save',
                          style: TextStyle(
                          color: AppColors.black,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat-semibold'
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),


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
