import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false, // hides leading widget
          flexibleSpace: Container(
            width: width,
            color: AppColors.primaryBackGroundColor,
            child: Row(
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
                  padding: const EdgeInsets.only(right: 60.0,top: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/wishlist_shopping2.png',
                        height: 35.0,width: 35.0,
                        color: AppColors.white_00,
                      ),
                      SizedBox(height: 5,),
                      Text('Privacy & Terms',style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto-Light',
                      ),),

                    ],
                  ),
                ),
                Expanded(child: Container()),

              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Terms and Conditions',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto-Medium'
                    ),),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RichText(
                      textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Light',
                                height: 1.4,
                                fontSize: 14.0
                            ),
                            children: [
                              TextSpan(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                    " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
                                    "ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut"
                                    "aliquip ex ea commodo consequat. Duis aute irure"
                              ),
                              TextSpan(
                                text: "\n\n"
                              ),
                              TextSpan(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                                    "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
                                    "ad minim "
                              )
                            ]
                        )
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Disclaimer',style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto-Medium'
                    ),),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RichText(
                      textAlign: TextAlign.justify,
                        text: TextSpan(
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Light',
                                fontSize: 14.0,
                                height: 1.4,
                            ),
                            children: [
                              TextSpan(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                                    "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
                                    "ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut"
                                    "aliquip ex ea commodo consequat. Duis aute irure"
                              )
                            ]
                        )
                    ),
                  ),
                  SizedBox(height: 35,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
