import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class CoupenPage extends StatefulWidget {
  @override
  _CoupenPageState createState() => _CoupenPageState();
}

class _CoupenPageState extends State<CoupenPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
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
                        'assets/icons/discount.png',
                        height: 25.0,width: 35.0,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 5,),
                      Text('My Coupen',style: TextStyle(
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Available Coupon',style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Roboto-Bold'
              ),),

              SizedBox(height: 10.0,),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.white_00
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Get 15% discount using HDFC Bank PayZapp Card',style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.appColor43,
                        fontFamily: 'Roboto-Bold'
                    ),),


                    Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                    Text('Use code PAYZAPP50 & get 15% discount up to 50 on orders above 150'
                      ,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.appColor43,
                          fontFamily: 'Roboto-Regular'
                      ),),
                    SizedBox(height: 5.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child : Text("Offer vaild till Apr 30, 2021 11:59PM"
                            ,
                            style: TextStyle(
                                fontSize: 10.0,
                                color: AppColors.appColor43,
                                fontFamily: 'Roboto-Regular'
                            ),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: AppColors.appColor44
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
                          child:  Text('PAYZAPP50',style: TextStyle(
                              fontSize: 13.0,
                              color: AppColors.appColor43,
                              fontFamily: 'Roboto-Bold'
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.white_00
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Get 4% Cashback',style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.appColor43,
                        fontFamily: 'Roboto-Bold'
                    ),),


                    Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                    Text('Get 4% cashback on orders using Filpkart Axis bank credit cards. Minimum transaction value of 100'
                      ,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.appColor43,
                          fontFamily: 'Roboto-Regular'
                      ),),
                    SizedBox(height: 5.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child : Text("Offer vaild till Apr 30, 2021 11:59PM"
                            ,
                            style: TextStyle(
                                fontSize: 10.0,
                                color: AppColors.appColor43,
                                fontFamily: 'Roboto-Regular'
                            ),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: AppColors.appColor44
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
                          child:  Text('FILPKART4',style: TextStyle(
                              fontSize: 13.0,
                              color: AppColors.appColor43,
                              fontFamily: 'Roboto-Bold'
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.white_00
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Kid's  item @50% OFF",style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.appColor43,
                        fontFamily: 'Roboto-Bold'
                    ),),


                    Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                    Text(
                    "Applicable on only Kid's item , use code and get 50% Discount on Kid's Clothes and accessories order above 500 ",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.appColor43,
                          fontFamily: 'Roboto-Regular'
                      ),),
                    SizedBox(height: 5.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child : Text("Offer vaild till Apr 30, 2021 11:59PM"
                            ,
                            style: TextStyle(
                                fontSize: 10.0,
                                color: AppColors.appColor43,
                                fontFamily: 'Roboto-Regular'
                            ),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: AppColors.appColor44
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
                          child:  Text('KIDS50',style: TextStyle(
                              fontSize: 13.0,
                              color: AppColors.appColor43,
                              fontFamily: 'Roboto-Bold'
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
