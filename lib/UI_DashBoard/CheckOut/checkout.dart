import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/UI_DashBoard/CheckOut/savedAddress.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }
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
                                    backgroundColor: AppColors.white_00,
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
                                    backgroundColor: AppColors.appColor7,
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
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: RaisedButton(
                              color: AppColors.white_00,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_searching,size: 16.0,color: AppColors.primaryBackGroundColor,),
                                  Text(' Choose your location',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryBackGroundColor,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat-semibold'
                                  ),),
                                ],
                              ),
                              onPressed: (){

                              },
                            )
                        ),
                        SizedBox(width: 5.0,),
                        Expanded(
                            child: RaisedButton(
                              color: AppColors.appColor3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,size: 16.0,color: AppColors.white_00,),
                                  Text('Add a new address',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white_00,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat-semibold'
                                  ),),
                                ],
                              ),
                              onPressed: (){

                              },
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('1 Saved Address',
                      style: TextStyle(
                          fontSize: 16.0
                      ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: RadioListTile(
                        value:4,
                        dense: true,
                        groupValue: selectedRadioTile,
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Musa dankaka",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16.0
                                ),),
                            ),
                            CircleAvatar(
                              radius: 12.0,
                              backgroundColor: AppColors.appColor4,
                              child: Icon(Icons.edit,color: AppColors.white_00,size: 14,),
                            ),
                            SizedBox(width: 5.0,),
                            CircleAvatar(
                              radius: 12.0,
                              backgroundColor: AppColors.appColor5,
                              child: Icon(Icons.delete,color: AppColors.white_00,size: 14,),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('No, 118 yakasa Quartes kano',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.grey_70
                              ),),
                            SizedBox(height: 5.0,),
                            Text('No, 118 yakasa Quartes kano',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.grey_70
                              ),),
                          ],
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                        },
                        activeColor: AppColors.primaryBackGroundColor,
                        selected: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Center(
                    child: Text('Enter Your National Address',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
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
                          MyNavigator.goToDashBoard(context);
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
