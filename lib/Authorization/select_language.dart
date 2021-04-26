import 'package:cutyapp/Authorization/login.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  bool onTap= false;
  bool onTap2= false;

  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Select Language',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      fontSize: 20),
                    ),
                    SizedBox(height: 6,),
                    Text('زبان منتخب کریں',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      fontSize: 20),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          },
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: AppColors.grey_90,
                                  width: 0.5
                                )
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: AppColors.white_00,
                                      child: Image.asset('assets/icons/us.png',fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text('English',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontSize: 14,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          },
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(
                                      color: AppColors.grey_90,
                                      width: 0.5
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: AppColors.white_00,
                                      child: Image.asset('assets/icons/urdu.png',fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text('اردو',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontSize: 14,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )


                  ],
                )),
              ),
              // Spacer(),
              Center(child: Image.asset('assets/icons/cuty2.png',height: 250,width: 300,fit: BoxFit.fill,)),
            ],
          )
      ),
    );
  }
}
