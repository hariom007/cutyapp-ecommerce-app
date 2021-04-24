import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

import 'drawerPage.dart';
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size. fromHeight(50.0), // here the desired height.
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Container(
              height: 100,
              width: width,
              padding: EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 5),
              decoration: BoxDecoration(
                  color: AppColors.white_00
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text('Cuty',
                      style: TextStyle(
                          fontFamily: 'Parisienne-Regular',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBackGroundColor
                      ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      showBottomSheet(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        context: context,

                        builder: (context) {
                          return Container(
                            height: height*0.7,
                          );
                        },
                      ).closed.whenComplete(() {
                        //do whatever you want after closing the bottom sheet
                      });
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.primaryBackGroundColor,
                      child: Image.asset('assets/icon/filter.png',
                        color: AppColors.white_00,
                        height: 28,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.menu,color: AppColors.black,),
                          onPressed: () => _scaffoldKey.currentState.openDrawer(),
                        ),
                      )
                  )

                ],
              ),
            ),
          )
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
    );
  }
}
