import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                        child: Image.asset('assets/icons/back.png',
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
                      Image.asset('assets/icon/wishlist_shopping1.png',color: AppColors.white_00,),
                      SizedBox(height: 15,),
                      Text('My WishList',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat-Thin',
                          fontWeight: FontWeight.bold
                      ),)

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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /*SizedBox(height: 80,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/wishlist_shopping1.png',color: AppColors.white_00,),
                      SizedBox(height: 15,),
                      Text('My WishList',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat-Thin',
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),*/
              SizedBox(height: 10,),
              Text('You have 2 item in list',style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Thin',
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 30,),
              Container(
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
                      child: Image.asset('assets/icons/product3.png',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text('Teraa Naturi Rain',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18
                                  ),),
                                      )),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: AppColors.red_50,
                                    child: Icon(Icons.clear,size: 10,),
                                  )
                                ],
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
                                            text: '75.99 '
                                        ),
                                        TextSpan(
                                            text: 'QAR '
                                        ),
                                      ]
                                  )
                              ),
                              SizedBox(height: 20,),
                              Container(
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primaryBackGroundColor),
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icon/cart.png',color: AppColors.primaryBackGroundColor,),
                                    Text('   ADD TO CART',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color: AppColors.primaryBackGroundColor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto-Regular'
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
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
                      child: Image.asset('assets/icons/product3.png',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text('Teraa Naturi Rain',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18
                                  ),),
                                      )),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: AppColors.red_50,
                                    child: Icon(Icons.clear,size: 10,),
                                  )
                                ],
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
                                            text: '75.99 '
                                        ),
                                        TextSpan(
                                            text: 'QAR '
                                        ),
                                      ]
                                  )
                              ),
                              SizedBox(height: 20,),
                              Container(
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primaryBackGroundColor),
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icon/cart.png',color: AppColors.primaryBackGroundColor,),
                                    Text('   ADD TO CART',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color: AppColors.primaryBackGroundColor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto-Regular'
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
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
/*Container(
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
                    Image.asset('assets/icon/wishlist_shopping1.png',color: AppColors.white_00,),
                    SizedBox(height: 15,),
                    Text('My WishList',style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat-Thin',
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 100,),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/cuty.png',
                      height: 200,
                    ),
                    SizedBox(height: 10,),
                    Text('No Favourites Yet',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    Text("Tap any heart next to a product to favourite. We'll save theme for you here.",style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto-Thin',
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,),

                  ],
                ),
              ),
            )
          ],
        ),
      )*/