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
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: height,
          decoration: BoxDecoration(
          color: AppColors.white_00,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context,true);
                    },
                    child: Container(
                      height: 60,
                      width: 70,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon/Rectangle2.png'),
                              fit: BoxFit.fill
                          ),
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_outlined,size: 20,color: AppColors.white_00,),
                      ),
                    ),
                  ),
                  Text("   Filter",
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: 'Montserrat-semibold',
                    fontSize: 16
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
