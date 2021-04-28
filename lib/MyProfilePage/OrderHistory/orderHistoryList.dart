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
                      Text('Order History',style: TextStyle(
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
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                child: Image.asset('assets/icons/product2.png',
                                  fit: BoxFit.contain,),
                              ),
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
                                                    color: AppColors.appColor33,
                                                    fontFamily: 'Roboto-Regular',
                                                    fontSize: 10.0
                                                ),)),
                                          Text('Yesterday',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: AppColors.appColor34,
                                                fontSize: 10.0,
                                              fontFamily: 'Roboto-Regular'
                                            ),)
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Terra Naturi Rein',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.appColor35,
                                            fontSize: 17.0,
                                          fontFamily: 'Roboto-Regular'
                                        ),),
                                      SizedBox(height: 5,),
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 11
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: '10 '
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
                                                          fontFamily: 'Roboto-Medium',
                                                          fontSize: 14.0
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: '20 '
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
                                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4.5),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color: AppColors.appColor4
                                              ),
                                              child: Text('Successful',
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                fontFamily: 'roboto-light'
                                              ),),
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
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                child: Image.asset('assets/icons/product1.png',
                                  fit: BoxFit.contain,),
                              ),
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
                                              child: Text('Order id: #555555HJ',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: AppColors.appColor33,
                                                    fontFamily: 'Roboto-Regular',
                                                    fontSize: 10.0
                                                ),)),
                                          Text('Yesterday',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: AppColors.appColor34,
                                                fontSize: 10.0,
                                                fontFamily: 'Roboto-Regular'
                                            ),)
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Golder Mask',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.appColor35,
                                            fontSize: 17.0,
                                            fontFamily: 'Roboto-Regular'
                                        ),),
                                      SizedBox(height: 5,),
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 11
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: '5 '
                                                ),
                                                TextSpan(
                                                    text: 'QAR '
                                                ),
                                                TextSpan(
                                                    text: ' X 1 items '
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
                                                          fontFamily: 'Roboto-Medium',
                                                          fontSize: 14.0
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: '5 '
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
                                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4.5),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  color: AppColors.appColor36
                                              ),
                                              child: Text('Cancelled',
                                                style: TextStyle(
                                                    fontSize: 11.0,
                                                    fontFamily: 'roboto-light'
                                                ),),
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
        ],
      ),
    );
  }
}
