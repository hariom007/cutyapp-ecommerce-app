import 'package:cutyapp/UI_DashBoard/CheckOut/checkout.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool isExpanded;

  @override
  void initState() {
    this.isExpanded = false;
    super.initState();
  }
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
                        'assets/icons/top_basket.png',
                        height: 35.0,width: 35.0,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 5,),
                      Text('Shopping Cart',style: TextStyle(
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
          Padding(
            padding: isExpanded ? EdgeInsets.only(bottom: 320.0) :EdgeInsets.only(bottom: 200.0) ,
            child: ListView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                                height: 95,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/icons/product3.png',
                                      fit: BoxFit.contain,),
                                  ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: Text('Terra Naturi Rein',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: AppColors.appColor30,
                                                        fontFamily: 'Roboto-Medium',
                                                        fontSize: 19.0
                                                    ),),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: CircleAvatar(
                                                radius: 10.0,
                                                backgroundColor: AppColors.appColor31,
                                                child: Icon(Icons.clear,size: 10,color: AppColors.white_00,),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 8.0,),
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
                                                            fontSize: 11.0
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: ' 20.00 '
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
                      SizedBox(height: 10,),
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
                                height: 95,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/icons/product1.png',
                                      fit: BoxFit.contain,),
                                  ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: Text('Golden Mask',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: AppColors.appColor30,
                                                        fontFamily: 'Roboto-Medium',
                                                        fontSize: 19.0
                                                    ),),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: CircleAvatar(
                                                radius: 10.0,
                                                backgroundColor: AppColors.appColor31,
                                                child: Icon(Icons.clear,size: 10,color: AppColors.white_00,),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 8.0,),
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
                                                            fontSize: 11.0
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: ' 20.00 '
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

                      SizedBox(height: 10,),
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
                                height: 95,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/icons/product3.png',
                                      fit: BoxFit.contain,),
                                  ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: Text('Terra Naturi Rein',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: AppColors.appColor30,
                                                        fontFamily: 'Roboto-Medium',
                                                        fontSize: 19.0
                                                    ),),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: CircleAvatar(
                                                radius: 10.0,
                                                backgroundColor: AppColors.appColor31,
                                                child: Icon(Icons.clear,size: 10,color: AppColors.white_00,),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 8.0,),
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
                                                            fontSize: 11.0
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: ' 20.00 '
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
                      SizedBox(height: 10,),
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
                                height: 95,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/icons/product1.png',
                                      fit: BoxFit.contain,),
                                  ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: Text('Golden Mask',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: AppColors.appColor30,
                                                        fontFamily: 'Roboto-Medium',
                                                        fontSize: 19.0
                                                    ),),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: CircleAvatar(
                                                radius: 10.0,
                                                backgroundColor: AppColors.appColor31,
                                                child: Icon(Icons.clear,size: 10,color: AppColors.white_00,),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 8.0,),
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
                                                            fontSize: 11.0
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: ' 20.00 '
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
                      SizedBox(height: 10,),
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
                                height: 95,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/icons/product3.png',
                                      fit: BoxFit.contain,),
                                  ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: Text('Terra Naturi Rein',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: AppColors.appColor30,
                                                        fontFamily: 'Roboto-Medium',
                                                        fontSize: 19.0
                                                    ),),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: CircleAvatar(
                                                radius: 10.0,
                                                backgroundColor: AppColors.appColor31,
                                                child: Icon(Icons.clear,size: 10,color: AppColors.white_00,),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 8.0,),
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
                                                            fontSize: 11.0
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: ' 20.00 '
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



                    ],
                  ),
                ),


              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              decoration: BoxDecoration(
                color: AppColors.white_00,
                borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                  ),]
              ),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      onExpansionChanged: (bool isexpande){
                        setState(() {
                          this.isExpanded = !isExpanded;
                        });
                      },
                      trailing: Padding(
                        padding: EdgeInsets.all(0),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text('Order Details',
                              style: TextStyle(
                                fontFamily: 'montserrat-semibold',
                                fontSize: 16.0,
                                color: isExpanded ? AppColors.appColor45 : AppColors.appColor45
                              ),),
                            ),
                            Container(
                                transform: Matrix4.translationValues(20, -5, 0),
                                child: isExpanded ? Image.asset('assets/icons/down_arrow.png',
                                  height: 30.0,width: 35.0,) : Image.asset('assets/icons/top_arrow.png',height: 30.0,width: 35.0,),
                            )

                          ],
                        )
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 10.0,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            isExpanded ?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text('Total Cart',
                                        style: TextStyle(
                                            fontFamily: 'roboto-regular',
                                            fontSize: 12.0,
                                            color: isExpanded ? AppColors.appColor46 : AppColors.appColor46
                                        ),),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(12, 0, 0),
                                      child: Text("\$80.00",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.appColor45,
                                            fontSize: 16.0,
                                            fontFamily: 'Roboto-Regular'
                                        ),),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text('Shipping Est.',
                                        style: TextStyle(
                                            fontFamily: 'roboto-regular',
                                            fontSize: 12.0,
                                            color: isExpanded ? AppColors.appColor46 : AppColors.appColor46
                                        ),),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(12, 0, 0),
                                      child: Text("\$80.00",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.appColor45,
                                            fontSize: 16.0,
                                            fontFamily: 'Roboto-Regular'
                                        ),),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text('Discount',
                                        style: TextStyle(
                                            fontFamily: 'roboto-regular',
                                            fontSize: 12.0,
                                            color: isExpanded ? AppColors.appColor46 : AppColors.appColor46
                                        ),),
                                    ),
                                    Container(
                                      width: 114.0,
                                      transform: Matrix4.translationValues(12, 0, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter Discount Code',
                                          isDense: true,
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                            fontFamily: 'roboto-regular',
                                            fontSize: 12.0,
                                            color: AppColors.appColor46
                                          )
                                        ),
                                      )
                                    )
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                              ],
                            ): Container() ,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text('Order Total',
                                    style: TextStyle(
                                        fontFamily: 'roboto-regular',
                                        fontSize: 12.0,
                                        color: isExpanded ? AppColors.black : AppColors.black
                                    ),),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(12, 0, 0),
                                  child: Text("\$80.00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'Roboto-Bold'
                                    ),),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      children: <Widget>[

                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Container(
                      width: width,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: AppColors.primaryBackGroundColor,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text('GO CHECKOUT',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontSize: 12.0,
                              fontFamily: 'Roboto-Bold'
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    this.isExpanded = !isExpanded;
                  });
                },
                children: <ExpansionPanel>[
                  new ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) =>
                    const Text("header data"),
                    body: const Text("Body data"),
                    isExpanded: this.isExpanded,
                  ),
                ],
              )*/