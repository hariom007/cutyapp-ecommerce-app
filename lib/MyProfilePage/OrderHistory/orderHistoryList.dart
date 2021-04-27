import 'package:cutyapp/MyProfilePage/OrderHistory/oredrHistoryDetail.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class OrderHistoryList extends StatefulWidget {
  @override
  _OrderHistoryListState createState() => _OrderHistoryListState();
}

class _OrderHistoryListState extends State<OrderHistoryList> {
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
                          Text('Order History',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderHistoryDetail()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: AppColors.white_00,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 100,
                              child: Image.asset('assets/icons/product2.png',
                                fit: BoxFit.contain,),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: Text('Order id: #2782HHDHJ',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: AppColors.grey_60,
                                                    fontSize: 12
                                                ),)),
                                          Text('Yesterday',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: AppColors.grey_60,
                                                fontSize: 12
                                            ),)
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Teraa Naturi Rain',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18
                                        ),),
                                      SizedBox(height: 5,),
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 14
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: '75.99 '
                                                ),
                                                TextSpan(
                                                    text: 'QAR '
                                                ),
                                                TextSpan(
                                                    text: ' X 2 items '
                                                ),
                                              ]
                                          )
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: RichText(
                                                  text: TextSpan(
                                                      style: TextStyle(
                                                          color: AppColors.black,
                                                          fontFamily: 'Roboto-Regular',
                                                          fontSize: 16
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: '2 '
                                                        ),
                                                        TextSpan(
                                                            text: 'QAR '
                                                        ),
                                                      ]
                                                  )
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color: AppColors.appColor4
                                              ),
                                              child: Text('Successful'),
                                            ),

                                          )

                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderHistoryDetail()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: AppColors.white_00,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 100,
                              child: Image.asset('assets/icons/product2.png',
                                fit: BoxFit.contain,),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: Text('Order id: #2782HHDHJ',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: AppColors.grey_60,
                                                    fontSize: 12
                                                ),)),
                                          Text('Yesterday',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: AppColors.grey_60,
                                                fontSize: 12
                                            ),)
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Teraa Naturi Rain',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18
                                        ),),
                                      SizedBox(height: 5,),
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 14
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: '75.99 '
                                                ),
                                                TextSpan(
                                                    text: 'QAR '
                                                ),
                                                TextSpan(
                                                    text: ' X 2 items '
                                                ),
                                              ]
                                          )
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: RichText(
                                                  text: TextSpan(
                                                      style: TextStyle(
                                                          color: AppColors.black,
                                                          fontFamily: 'Roboto-Regular',
                                                          fontSize: 16
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: '2 '
                                                        ),
                                                        TextSpan(
                                                            text: 'QAR '
                                                        ),
                                                      ]
                                                  )
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color: AppColors.appColor5
                                              ),
                                              child: Text('Cancelled'),
                                            ),

                                          )

                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
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
                  child: Image.asset('assets/icons/back.png',
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
