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
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon/Rectangle9.png'),
                            fit: BoxFit.fill
                        ),
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
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 60.0,top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/wishlist_shopping2.png',color: AppColors.white_00,),
                      SizedBox(height: 15,),
                      Text('Order Detail',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat-Thin',
                          fontWeight: FontWeight.bold
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
                  // SizedBox(height: 80,),
                 /* Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/wishlist_shopping2.png',color: AppColors.white_00,),
                          SizedBox(height: 15,),
                          Text('Order Detail',style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat-Thin',
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ],
                  ),*/
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Delivery Detail',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
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
                        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text('Musa dankaka',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                            SizedBox(height: 5,),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: AppColors.grey_60,
                                        fontFamily: 'Roboto-Thin',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
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
                                        fontFamily: 'Roboto-Regular',
                                        fontSize: 16
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
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
                                    SizedBox(height: 5.0,),
                                    Text('Teraa Naturi Rain',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 20
                                      ),),
                                    SizedBox(height: 10.0,),
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
                                    RichText(
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold
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
                        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text('Subtotal (1 Item)',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),)),
                                Text("＄100",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold

                                  ),)
                              ],
                            ),
                            Divider(color: AppColors.grey_80,height: 25,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text('Discount',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.appColor4,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),)),
                                Text("-＄20",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppColors.appColor4,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold

                                  ),)
                              ],
                            ),
                            Divider(color: AppColors.grey_80,height: 25,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text('Delivery Fee',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),)),
                                Text("＄10",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold

                                  ),)
                              ],
                            ),
                            Divider(color: AppColors.grey_80,height: 25,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text('Tax',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),)),
                                Text("＄5",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold

                                  ),)
                              ],
                            ),
                            Divider(color: AppColors.grey_80,height: 25,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text('Est. Total',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)),
                                Text("＄95",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold

                                  ),)
                              ],
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
