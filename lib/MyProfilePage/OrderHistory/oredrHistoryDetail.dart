import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
class OrderHistoryDetail extends StatefulWidget {
  @override
  _OrderHistoryDetailState createState() => _OrderHistoryDetailState();
}

class _OrderHistoryDetailState extends State<OrderHistoryDetail> {
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
                      Text('Order Detail',style: TextStyle(
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
                    child: Text('  Delivery Detail',style: TextStyle(
                        fontSize: 17.0,
                      fontFamily: 'Roboto-Bold'
                    ),),
                  ),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text('Musa dankaka',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppColors.appColor37,
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: 16.0
                              ),),
                            SizedBox(height: 5,),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: AppColors.appColor38,
                                        fontFamily: 'Roboto-Light',
                                        fontSize: 12.5
                                    ),
                                    children: [
                                      TextSpan(
                                          text: 'Rimi market, 12345, Service road, Nr Mr. Been cafe, Indore Madhya pradesh ,India '
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(height: 10.0,),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontFamily: 'Roboto-Light',
                                        fontSize: 14.0
                                    ),
                                    children: [
                                      TextSpan(
                                          text: '+91 123-456-7890 '
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(height: 10.0,),
                            Text('Order no. 233',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 17.0
                              ),),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
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

                                    Text('Terra Naturi Rein',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.appColor35,
                                          fontSize: 17.0,
                                          fontFamily: 'Roboto-Regular'
                                      ),),
                                    SizedBox(height: 10.0,),
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
                                    SizedBox(height: 10.0,),
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
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Price Detail',style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Roboto-Bold'
                    ),),
                  ),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text('Subtotal (1 Item)',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                          fontFamily: 'Roboto-Regular'
                                        ),)),
                                  Text("＄100",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontFamily: 'Roboto-Regular'

                                    ),)
                                ],
                              ),
                            ),
                            Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text('Discount',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.appColor39,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular'
                                        ),)),
                                  Text("-＄20",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.appColor39,
                                        fontSize: 16,
                                        fontFamily: 'Roboto-Regular'
                                    ),)
                                ],
                              ),
                            ),
                            Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text('Delivery Fee',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular'
                                        ),)),
                                  Text("＄10",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontFamily: 'Roboto-Regular'
                                    ),)
                                ],
                              ),
                            ),
                            Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text('Tax',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular'
                                        ),)),
                                  Text("＄5",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontFamily: 'Roboto-Regular'
                                    ),)
                                ],
                              ),
                            ),
                            Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text('Est. Total',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18,
                                            fontFamily: 'Roboto-Bold'
                                        ),)),
                                  Text("＄95",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 18,
                                        fontFamily: 'Roboto-Bold'
                                    ),)
                                ],
                              ),
                            ),
                            SizedBox(height: 20,)

                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      transform: Matrix4.translationValues(0, -25.0, 0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: AppColors.white_00,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset('assets/icon/check.png',fit: BoxFit.contain,),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          /*Positioned(
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
                  child: Icon(Icons.arrow_back_ios_outlined,size: 20,color: AppColors.primaryBackGroundColor,),
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
