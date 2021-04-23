import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.primaryBackGroundColor,
                      child: Image.asset('assets/icon/filter.png',
                      color: AppColors.white_00,
                        height: 28,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(Icons.menu,color: AppColors.black,),
                            onPressed: (){

                            },
                          ),
                        )
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
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
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/icon/Image1.png'),
                                    fit: BoxFit.contain
                                  )
                                ),
                              ),
                              Divider(
                                color: AppColors.grey_70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icon/Image1.png')
                                    )
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
