import 'package:cutyapp/UI_DashBoard/ShoppingCart/shoppingCart.dart';
import 'package:cutyapp/UI_DashBoard/WishListPage/wishListPage.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

import 'HomePage/drawerPage.dart';
import 'HomePage/homePage.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  int _pState = 0;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var pages = [new  HomePage(scaffoldKey: _scaffoldKey,), new  WishListPage(),];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          key: _scaffoldKey,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ShoppingCart()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: AppColors.primaryBackGroundColor,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 8.0,
                      backgroundColor: AppColors.white_00,
                      child: Text('1',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 10.0,
                        ),),
                    ),
                    Image.asset('assets/icons/top_basket.png',height: 38.0,width: 38.0),
                  ],
                ),
              )
          ),
          drawer: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Drawer(
              child: DrawerPage(),
            ),
          ),
          body: pages[_currentIndex],
          bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColors.white_00,
            selectedItemColor: AppColors.primaryBackGroundColor,
            unselectedItemColor: AppColors.grey_20,
            onTap: onTappedChanged,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.asset('assets/icons/bottom_menu.png',height: 25.0,width: 23.0,),
                ),
                  title: Padding(padding: EdgeInsets.all(0))
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Image.asset('assets/icons/heart_unfill.png',height: 25.0,width: 25.0,),
                ),
                  title: Padding(padding: EdgeInsets.all(0))
              )
            ],
          )
      ),
    );
  }
  void onTappedChanged(int index) {
    setState(() {
      _currentIndex = index;
      _pState=_currentIndex;
    });
  }
}
