import 'package:cutyapp/DarkMode/ThemeManager.dart';
import 'package:cutyapp/MyProfilePage/OrderHistory/orderHistoryList.dart';
import 'package:cutyapp/MyProfilePage/editProfile.dart';
import 'package:cutyapp/MyProfilePage/myWishList.dart';
import 'package:cutyapp/MyProfilePage/termsCondtion.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}
class Global{
  static final shared =Global();
  bool isSwitched = false;
}
class Global2{
  static final shared2 =Global2();
  bool isSwitched2 = false;
}

class _DrawerPageState extends State<DrawerPage> {
  bool isSwitched;
  bool isSwitched2;
  @override
  void initState() {
    isSwitched = Global.shared.isSwitched;
    isSwitched2 = Global2.shared2.isSwitched2;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryBackGroundColor,
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            color: AppColors.primaryBackGroundColor,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.primaryBackGroundColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context,true);
                        },
                        child: Icon(Icons.clear,size: 22.0,)),
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: AppColors.primaryBackGroundColor,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/icons/user.png')
                                  )
                              ),
                              height: 75,
                              width: 77,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Martin Roy ',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto-Medium',
                                    fontWeight: FontWeight.bold
                                ),),
                                GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile()));
                                    },
                                    child: Image.asset('assets/icons/edit.png',
                                      height:14.0,
                                      width: 14.0,
                                      color: AppColors.white_00,))
                              ],
                            ),
                            SizedBox(height: 4,),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: AppColors.white_00,
                                        fontFamily: 'Roboto-Light',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13
                                    ),
                                    children: [
                                      TextSpan(
                                          text: 'martin.roy@gmail.com'
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: 50.0,),
                            Text('General Setting',style: TextStyle(
                              fontSize: 18.0,
                            ),),
                            SizedBox(height: 33,),
                            /*ListTile(
                              dense: true,
                              title: Text('My WishList',
                                style: TextStyle(
                                    color: AppColors.white_00,
                                    fontFamily: 'Roboto-Thin',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                              leading: Image.asset('assets/icons/heart_empty.png',
                                height:19.0,
                                width: 19.0,
                                color: AppColors.white_00,),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyWishListPage()));
                              },
                            ),*/

                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyWishListPage()));
                              },
                              child: Container(
                                height: 40.0,
                                width: width,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/icons/heart_empty.png',
                                        height:19.0,
                                        width: 19.0,
                                        color: AppColors.white_00,),
                                      SizedBox(width: 10.0,),
                                      Text('My WishList',
                                        style: TextStyle(
                                            color: AppColors.white_00,
                                            fontFamily: 'Roboto-Regular',
                                            fontSize: 14
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0,),
                            GestureDetector(
                              onTap: (){
                              },
                              child: Container(
                                height: 40.0,
                                width: width,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/icons/notification.png',
                                        height:19.0,
                                        width: 19.0,
                                        color: AppColors.white_00,),
                                      SizedBox(width: 10.0,),
                                      Expanded(
                                        child: Text('Get Notifications',
                                          style: TextStyle(
                                              color: AppColors.white_00,
                                              fontFamily: 'Roboto-Regular',
                                              fontSize: 14
                                          ),),
                                      ),
                                      Container(
                                        width: 40.0,
                                        child: FlutterSwitch(
                                          width: 40.0,
                                          height: 25.0,
                                          valueFontSize: 12.0,
                                          toggleSize: 18.0,
                                          value: isSwitched,
                                          activeColor: AppColors.white_00,
                                          inactiveColor: AppColors.white_00,
                                          activeToggleColor: AppColors.primaryBackGroundColor,
                                          inactiveToggleColor: AppColors.primaryBackGroundColor,
                                          onToggle: (bool isOn) {
                                            setState(() {
                                              isSwitched = isOn;
                                              Global.shared.isSwitched = isOn;
                                              isOn =!isOn;
                                              print(isSwitched);
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 14.0,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0,),
                            GestureDetector(
                              onTap: (){
                              },
                              child: Container(
                                height: 40.0,
                                width: width,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/icon/list.png',
                                        height:19.0,
                                        width: 19.0,
                                        color: AppColors.white_00,),
                                      SizedBox(width: 10.0,),
                                      Text('Notify Messages',
                                        style: TextStyle(
                                            color: AppColors.white_00,
                                            fontFamily: 'Roboto-Regular',
                                            fontSize: 14
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0,),
                            InkWell(
                              splashColor: AppColors.black,
                              hoverColor: AppColors.black,
                              focusColor: AppColors.appColor21,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderHistoryList()));
                              },
                              child: Container(
                                height: 40.0,
                                width: width,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/icon/clipboard_list.png',
                                        height:19.0,
                                        width: 19.0,
                                        color: AppColors.white_00,),
                                      SizedBox(width: 10.0,),
                                      Text('Order History',
                                        style: TextStyle(
                                            color: AppColors.white_00,
                                            fontFamily: 'Roboto-Regular',
                                            fontSize: 14
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: AppColors.white_00,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('Help & Support',style: TextStyle(
                      fontSize: 20,
                      color: AppColors.black,
                    ),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 40.0,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icon/globe.png',
                            height:19.0,
                            width: 19.0,
                            color: AppColors.black,),
                          SizedBox(width: 10.0,),
                          Text('Language',
                            style: TextStyle(
                                color: AppColors.appColor18,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 14
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 40.0,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icon/moon.png',
                            height:19.0,
                            width: 19.0,
                            color: AppColors.black,),
                          SizedBox(width: 10.0,),
                          Expanded(
                            child: Text('Dark Theme',
                              style: TextStyle(
                                  color: AppColors.appColor18,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 14
                              ),),
                          ),
                          Container(
                            width: 40.0,
                            child: FlutterSwitch(
                              width: 40.0,
                              height: 25.0,
                              valueFontSize: 12.0,
                              toggleSize: 18.0,
                              value: isSwitched2,
                              activeColor: AppColors.appColor10,
                              inactiveColor: AppColors.appColor10,
                              activeToggleColor: AppColors.white_00,
                              inactiveToggleColor: AppColors.white_00,
                              onToggle: (bool isOn) {
                                setState(() {
                                  isSwitched2 = isOn;
                                  Global2.shared2.isSwitched2 = isOn;
                                  isOn =!isOn;
                                  print(isSwitched2);
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 14.0,),

                        ],
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsConditions()));
                  },
                  child: Container(
                    height: 40.0,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icon/Heart.png',
                            height:19.0,
                            width: 19.0,
                            color: AppColors.black,),
                          SizedBox(width: 10.0,),
                          Text('Privacy & Terms',
                            style: TextStyle(
                                color: AppColors.appColor18,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 14
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 40.0,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icon/logout.png',
                            height:19.0,
                            width: 19.0,
                            color: AppColors.black,),
                          SizedBox(width: 10.0,),
                          Text('Logout',
                            style: TextStyle(
                                color: AppColors.appColor18,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 14
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/whatsapp.png',height:23.0,width: 24.0,color: AppColors.appColor4,),
                      Text('   CONTACT US',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.appColor4,
                          fontSize: 18.0,
                          fontFamily: 'Roboto-Medium'
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
