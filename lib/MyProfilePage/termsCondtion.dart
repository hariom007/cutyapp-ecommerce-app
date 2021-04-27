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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/wishlist_shopping2.png',color: AppColors.white_00,),
                          SizedBox(height: 15,),
                          Text('Privacy & Terms',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Terms and Conditions',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
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
                        fontWeight: FontWeight.bold
                    ),),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: AppColors.white_00,
                                fontFamily: 'Roboto-Thin',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
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
          Positioned(
            top: 60,
            left: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context,true);
              },
              child: Container(
                height: 60,
                width: 70,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon/Rectangle9.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Center(
                  child:Image.asset('assets/icons/back.png',
                    height:19.0,
                    width: 19.0,
                    color: AppColors.primaryBackGroundColor,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
