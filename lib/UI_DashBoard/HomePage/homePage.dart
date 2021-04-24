import 'package:cutyapp/UI_DashBoard/HomePage/drawerPage.dart';
import 'package:cutyapp/UI_DashBoard/HomePage/filterPage.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FilterPage()));
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
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/icon/Image1.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.grey_10,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                      style: TextStyle(
                                                        color: AppColors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'Roboto-Regular',
                                                        fontSize: 15
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: '75.99 '
                                                        ),
                                                        TextSpan(
                                                          text: 'QAR '
                                                        ),
                                                      ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                  style: TextStyle(
                                                    fontSize: 12
                                                  ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image3.png'),
                                        fit: BoxFit.contain
                                    )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.red_50,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'Roboto-Regular',
                                                            fontSize: 15
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: '75.99 '
                                                          ),
                                                          TextSpan(
                                                              text: 'QAR '
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                    style: TextStyle(
                                                        fontSize: 12
                                                    ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image3.png'),
                                        fit: BoxFit.contain
                                    )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.red_50,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'Roboto-Regular',
                                                            fontSize: 15
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: '75.99 '
                                                          ),
                                                          TextSpan(
                                                              text: 'QAR '
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                    style: TextStyle(
                                                        fontSize: 12
                                                    ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image1.png'),
                                        fit: BoxFit.contain
                                    )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.grey_10,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'Roboto-Regular',
                                                            fontSize: 15
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: '75.99 '
                                                          ),
                                                          TextSpan(
                                                              text: 'QAR '
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                    style: TextStyle(
                                                        fontSize: 12
                                                    ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image1.png'),
                                        fit: BoxFit.contain
                                    )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.grey_10,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'Roboto-Regular',
                                                            fontSize: 15
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: '75.99 '
                                                          ),
                                                          TextSpan(
                                                              text: 'QAR '
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                    style: TextStyle(
                                                        fontSize: 12
                                                    ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image3.png'),
                                        fit: BoxFit.contain
                                    )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite,color: AppColors.red_50,),
                                  onPressed: (){

                                  },
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'Roboto-Regular',
                                                            fontSize: 15
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: '75.99 '
                                                          ),
                                                          TextSpan(
                                                              text: 'QAR '
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                Container(
                                                  color: AppColors.primaryBackGroundColor,
                                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  child: Text('-50%',
                                                    style: TextStyle(
                                                        fontSize: 12
                                                    ),),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: 3,),
                                            Text('Baking Powder Clean',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        )
                                    ),
                                    Center(
                                      child: Icon(Icons.add_circle_outline,color: AppColors.primaryBackGroundColor,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
          /*Positioned.fill(
            bottom: 0,
            child: Align(
                alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.primaryBackGroundColor,
                ),
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
                )
              ),
            ),
          ),*/

        ],
      ),
    );
  }
}
