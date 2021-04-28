import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/UI_DashBoard/CheckOut/addNewAddress.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class SavedAddress extends StatefulWidget {
  @override
  _SavedAddressState createState() => _SavedAddressState();
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


class _SavedAddressState extends State<SavedAddress> {

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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: AppColors.white_00),
                                  color: AppColors.white_00
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icon/location.png',
                                      height: 20.0,width: 20.0,color: AppColors.appColor8,
                                      fit: BoxFit.fill,),
                                    Text(' Choose your location',style: TextStyle(
                                        color: AppColors.appColor8,
                                        fontSize: 12,
                                        fontFamily: 'Roboto-Regular'
                                    ),),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 5.0,),
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    // border: Border.all(color: AppColors.white_00),
                                    color: AppColors.appColor3
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 16.0,color: AppColors.white_00,),
                                    Text('Add a new address',style: TextStyle(
                                        color: AppColors.white_00,
                                        fontSize: 12,
                                        fontFamily: 'Roboto-Regular'
                                    ),),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('3 Saved Address',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Roboto-Regular'
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
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: radioDataList.map<Widget>((data) {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedRadio = 1;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Radio<int>(

                                      activeColor: AppColors.primaryBackGroundColor,
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (int value) {
                                        setState(() {

                                          selectedRadio = 1;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 8.0,),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text("Abdul Islamic",
                                                    style: TextStyle(
                                                        color: AppColors.appColor37,
                                                        fontSize: 16.0,
                                                        fontFamily: 'Roboto-Medium'
                                                    ),),
                                                ),
                                                Container(
                                                  transform: Matrix4.translationValues(0, -5, 0),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor41,
                                                        child: Icon(Icons.edit_outlined,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 3.0,),
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor42,
                                                        child: Icon(Icons.delete_outline,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 5.0,),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text('No, 118 yakasa Quartes kano',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text('Rimi Market ( 1234389 )',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),),
                                          ],
                                        )
                                    ),


                                  ],
                                ),
                              ),
                            );
                          },
                          ).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.white_00,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: radioDataList.map<Widget>((data) {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedRadio = 2;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Radio<int>(

                                      activeColor: AppColors.primaryBackGroundColor,
                                      value: 2,
                                      groupValue: selectedRadio,
                                      onChanged: (int value) {
                                        setState(() {

                                          selectedRadio = 2;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 8.0,),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text("Yusuf Saiad",
                                                    style: TextStyle(
                                                        color: AppColors.appColor37,
                                                        fontSize: 16.0,
                                                        fontFamily: 'Roboto-Medium'
                                                    ),),
                                                ),
                                                Container(
                                                  transform: Matrix4.translationValues(0, -5, 0),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor41,
                                                        child: Icon(Icons.edit_outlined,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 3.0,),
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor42,
                                                        child: Icon(Icons.delete_outline,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 5.0,),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text('No, 118 yakasa Quartes kano',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text('Rimi Market ( 1234389 )',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),),
                                          ],
                                        )
                                    ),


                                  ],
                                ),
                              ),
                            );
                          },
                          ).toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.white_00,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: radioDataList.map<Widget>((data) {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedRadio = 3;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Radio<int>(

                                      activeColor: AppColors.primaryBackGroundColor,
                                      value: 3,
                                      groupValue: selectedRadio,
                                      onChanged: (int value) {
                                        setState(() {

                                          selectedRadio = 3;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 8.0,),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text("Musa dankaka",
                                                    style: TextStyle(
                                                        color: AppColors.appColor37,
                                                        fontSize: 16.0,
                                                        fontFamily: 'Roboto-Medium'
                                                    ),),
                                                ),
                                                Container(
                                                  transform: Matrix4.translationValues(0, -5, 0),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor41,
                                                        child: Icon(Icons.edit_outlined,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 3.0,),
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: AppColors.appColor42,
                                                        child: Icon(Icons.delete_outline,color: AppColors.white_00,size: 14,),
                                                      ),
                                                      SizedBox(width: 5.0,),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text('No, 118 yakasa Quartes kano',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text('Rimi Market ( 1234389 )',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Roboto-Light',
                                                color: AppColors.appColor38,
                                              ),),
                                          ],
                                        )
                                    ),


                                  ],
                                ),
                              ),
                            );
                          },
                          ).toList(),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.0,),


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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AddNewAddress()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: AppColors.white_00,
                  child: Text('NEXT STEP',
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
