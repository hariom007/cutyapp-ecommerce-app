import 'package:cutyapp/MyProfilePage/OrderHistory/orderHistoryList.dart';
import 'package:cutyapp/MyProfilePage/editProfile.dart';
import 'package:cutyapp/MyProfilePage/myWishList.dart';
import 'package:cutyapp/MyProfilePage/termsCondtion.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: AppColors.primaryBackGroundColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            Container(
             padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context,true);
                      },
                        child: Icon(Icons.clear)),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.white_00,
                          child: Image.asset('assets/icon/team_circle.png'),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Martin Roy ',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile()));
                              },
                                child: Icon(Icons.edit,size: 20,))
                          ],
                        ),
                        SizedBox(height: 6,),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: AppColors.white_00,
                                    fontFamily: 'Roboto-Thin',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                                children: [
                                  TextSpan(
                                     text: 'martin.roy@gmail.com'
                                  )
                                ]
                            )
                        ),
                        SizedBox(height: 36,),
                        Text('General Setting',style: TextStyle(
                            fontSize: 20,
                        ),),
                        SizedBox(height: 10,),
                        ListTile(
                          dense: true,
                          title: Text('My WishList',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          leading: Icon(Icons.favorite_outline_rounded,color: AppColors.white_00,),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyWishListPage()));
                          },
                        ),
                        ListTile(
                          onTap: (){
                          },
                          dense: true,
                          title: Text('Get Notifications',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          leading: Icon(Icons.notifications_none,color: AppColors.white_00,),
                          trailing:  Switch(
                            value: isSwitched,
                            onChanged: (bool isOn) {
                              print(isOn);
                              setState(() {
                                isSwitched = isOn;
                                Global.shared.isSwitched = isOn;
                                isOn =!isOn;
                                print(isSwitched);
                              });
                            },
                            activeColor: AppColors.primaryBackGroundColor,
                            activeTrackColor: AppColors.white_00,
                            inactiveTrackColor: AppColors.white_00,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            inactiveThumbColor: AppColors.primaryBackGroundColor,
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Notify Messages',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          leading: Image.asset('assets/icon/list.png',color: AppColors.white_00,),
                          onTap: (){

                          },
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Order History',
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          leading: Image.asset('assets/icon/clipboard_list.png',color: AppColors.white_00,),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderHistoryList()));
                          },
                        ),
                        Container(
                          height: 400,
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
                              ListTile(
                                dense: true,
                                title: Text('Language',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: 'Roboto-Thin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                leading: Image.asset('assets/icon/globe.png',color: AppColors.black,),
                                onTap: (){

                                },
                              ),
                              ListTile(
                                onTap: (){

                                },
                                dense: true,
                                title: Text('Dark Theme',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: 'Roboto-Thin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                leading: Image.asset('assets/icon/moon.png',color: AppColors.black,),
                                trailing:  Switch(
                                  value: isSwitched2,
                                  onChanged: (bool isOn) {
                                    print(isOn);
                                    setState(() {
                                      isSwitched2 = isOn;
                                      Global2.shared2.isSwitched2 = isOn;
                                      isOn =!isOn;
                                      print(isSwitched2);
                                    });
                                  },
                                  activeColor: AppColors.white_00,
                                  activeTrackColor: AppColors.primaryBackGroundColor,
                                  inactiveTrackColor: AppColors.primaryBackGroundColor,
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  inactiveThumbColor: AppColors.white_00,
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text('Privacy & Terms',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: 'Roboto-Thin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                leading: Image.asset('assets/icon/Heart.png',color: AppColors.black,),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsConditions()));
                                },
                              ),
                              ListTile(
                                dense: true,
                                title: Text('Logout',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontFamily: 'Roboto-Thin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                leading: Image.asset('assets/icon/logout.png',color: AppColors.black,),
                                onTap: (){

                                },
                              ),
                              SizedBox(height: 20,),

                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icon/whatsapp.png',color: AppColors.appColor4,),
                                    Text('   CONTACT US',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor4,
                                        fontSize: 16,
                                        fontFamily: 'Montserrat-Semibold'
                                    ),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
