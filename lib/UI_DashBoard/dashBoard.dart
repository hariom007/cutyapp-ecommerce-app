import 'package:cutyapp/UI_DashBoard/WishListPage/wishListPage.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

import 'HomePage/homePage.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {


  int _currentIndex = 0;
  int _pState = 0;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var pages = [new  HomePage(), new  WishListPage(),];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FloatingActionButton(
                onPressed: (){

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: AppColors.primaryBackGroundColor,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColors.white_00,
                      child: Text('1',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12
                        ),),
                    ),
                    Image.asset('assets/icon/cart.png',height: 40,width: 40,color: AppColors.white_00,),
                  ],
                ),
              )
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
                icon: new Icon(Icons.home),
                  title: Padding(padding: EdgeInsets.all(0))
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.favorite),
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
