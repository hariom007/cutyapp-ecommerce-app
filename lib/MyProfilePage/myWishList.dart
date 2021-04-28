import 'package:cutyapp/MyNavigator/myNavigator.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class MyWishListPage extends StatefulWidget {
  @override
  _MyWishListPageState createState() => _MyWishListPageState();
}

class _MyWishListPageState extends State<MyWishListPage> {
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
                      Navigator.pop(context);
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
                      Image.asset('assets/icon/wishlist_shopping1.png',
                        color: AppColors.white_00,
                        height: 33.0,width: 33.0,fit: BoxFit.fill,),
                      SizedBox(height: 5.0,),
                      Text('My Wishlist',style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto-Light',
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
      body: Container(
        transform: Matrix4.translationValues(0, -30, 0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/cuty.png',),
            SizedBox(height: 10,),
            Text('No favourites yet.',
              style: TextStyle(
                fontSize: 19.0,
                fontFamily: 'Roboto-Regular',
              ),),
            SizedBox(height: 20,),
            Text("Tap any heart next to a product to favourite."
              ,style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: 'Roboto-Light',

              ),
              textAlign: TextAlign.center,),
            Text(
              " We'll save them for you here."
              ,style: TextStyle(
                fontSize: 13.0,
                fontFamily: 'Roboto-Light',
            ),
              textAlign: TextAlign.center,),
            SizedBox(height: height*0.1,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: width,
                child: RaisedButton(
                  color: AppColors.white_00,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: (){

                  },
                  child: Text('START SHOPPING',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.0,
                        fontFamily: 'Roboto-Medium'
                    ),),
                ),
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