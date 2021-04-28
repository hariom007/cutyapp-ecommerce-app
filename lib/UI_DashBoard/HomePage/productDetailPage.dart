import 'package:carousel_slider/carousel_slider.dart';
import 'package:cutyapp/UI_DashBoard/CheckOut/addNewAddress.dart';
import 'package:cutyapp/UI_DashBoard/CheckOut/checkout.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> with TickerProviderStateMixin {
  String _chosenValue;
  TabController tabController;
  int _tabIndex = 0;

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/icons/product3.png',
    'assets/icons/product3.png',
    'assets/icons/product3.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void dispose() {
    tabController = TabController(length: 2,vsync: this);
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    tabController = TabController(length: 2,vsync: this);
    tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {
        _tabIndex = tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    tabController.addListener(_handleTabSelection);

    return Scaffold(
      backgroundColor: AppColors.appColor6,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: Container(
                padding: EdgeInsets.only(bottom: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 358.0,
                      color: AppColors.appColor6,
                      child: Column(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 275.0,
                              initialPage: 0,
                              enlargeCenterPage: false,
                              autoPlay: false,
                              reverse: false,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: true,
                              autoPlayInterval: Duration(seconds: 7),
                              autoPlayAnimationDuration: Duration(milliseconds: 3000),
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, CarouselPageChangedReason reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                            ),

                            items: imgList.map((imgList) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return ClipRRect(
                                      borderRadius: new BorderRadius.circular(0.0),
                                      child: Container(
                                        height: 275.0,
                                        transform: Matrix4.translationValues(0, 10, 0),
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: AppColors.appColor6,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0),
                                          child: Image.asset(imgList,
                                            fit: BoxFit.contain,),
                                        ),
                                      ));
                                },
                              );
                            }
                            ).toList(),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: map<Widget>(imgList, (index, url) {
                                return GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _current = index;
                                    });
                                  },
                                  child: _current == index ? Container(
                                    width: 60.0,
                                    height: 62.0,
                                    decoration: BoxDecoration(
                                        color: AppColors.white_00,
                                        borderRadius: BorderRadius.circular(5.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(1.0, 1.0), // shadow direction: bottom right
                                        )
                                      ],

                                    ),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    child: Image.asset(url,fit: BoxFit.fill,),
                                  ) : GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _current = index;
                                      });
                                    },
                                    child: Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                          color: AppColors.white_00,
                                          borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 5.0),
                                      child: Image.asset(url,fit: BoxFit.fill,),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 0.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Baking Power Clean',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: AppColors.appColor11,
                                          fontSize: 19.0,
                                        fontFamily: 'Roboto-Regular'
                                      ),),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,right: 5.0),
                                child: Image.asset('assets/icons/share.png',height: 32.0,width: 32.0,),
                              )
                            ],
                          ),
                          SizedBox(height: 4.0,),
                          Text(
                            'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                            ,style: TextStyle(
                              fontFamily: 'Roboto-regular',
                              fontSize: 10.0,
                              color: AppColors.appColor12
                          ),),
                          SizedBox(height: 20.0,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontFamily: 'Roboto-Medium',
                                              fontSize: 15.0
                                          ),
                                          children: [
                                            TextSpan(
                                                text: '75.99 '
                                            ),
                                            TextSpan(
                                                text: 'QAR '
                                            ),
                                            TextSpan(
                                              text: '  89.99 QAR',
                                              style: TextStyle(
                                                  color: AppColors.appColor13,
                                                  fontSize: 11.0
                                              ),
                                            ),
                                            TextSpan(
                                              text: '  21% off ',
                                              style: TextStyle(
                                                  color: AppColors.appColor14,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                          ]
                                      )
                                  )),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: AppColors.appColor15,
                                          fontFamily: 'Roboto-Regular',
                                          fontSize: 12.0
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '4.5 '
                                        ),
                                        TextSpan(
                                            text: 'Rating '
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 17.0,width: 19.0,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 17.0,width: 19.0,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 17.0,width: 19.0,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 17.0,width: 19.0,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star_half.png',height: 17.0,width: 19.0,)
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text('Product QTY',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 12.0,
                                      fontFamily: 'Roboto-Regular'
                                    ),)),
                              Container(
                                height: 28.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.6,color: AppColors.appColor23),
                                    borderRadius: BorderRadius.circular(5.0)
                                ),
                                alignment: Alignment.center,

                                child: DropdownButton<String>(
                                  focusColor:Colors.white,
                                  isDense: true,
                                  value: _chosenValue,
                                  style: TextStyle(color: Colors.white),
                                  iconEnabledColor:Colors.black,
                                  iconSize: 26.0,
                                  underline: SizedBox(),
                                  icon: Icon(Icons.keyboard_arrow_down_sharp,size: 22.0,),
                                  items: <String>[
                                    '1', '2', '3',
                                    '4', '5', '6',
                                    '7','8','9'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        "  "+value+" ",
                                          style: TextStyle(
                                          color: AppColors.appColor15,
                                          fontFamily: 'Roboto-Medium',
                                          fontSize: 12.0,
                                      ),
                                      ),
                                    );
                                  }).toList(),
                                  hint: Text(
                                    "  1 ",
                                    style: TextStyle(
                                        color: AppColors.appColor15,
                                        fontFamily: 'Roboto-Medium',
                                        fontSize: 12.0,
                                    ),
                                  ),
                                  onChanged: (String value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                  },
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height:10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColors.appColor22,
                                          )
                                        ),

                                      ),
                                      child: TabBar(
                                        controller: tabController,
                                        labelColor: AppColors.appColor1,
                                        unselectedLabelColor: AppColors.appColor17,
                                        indicatorColor: AppColors.primaryBackGroundColor,
                                        indicatorWeight: 2,
                                        labelPadding: EdgeInsets.only(left: 0,right: 5.0,bottom: 0),
                                        indicatorPadding: EdgeInsets.only(top: 0),
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        tabs: <Widget>[
                                          Tab(
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Product Description',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: "Roboto-Medium"
                                                ),),
                                            ),
                                          ),
                                          Tab(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text('Shopping Info',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: "Roboto-Medium"
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child: [
                                        Container(
                                            color:AppColors.white_00,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                                                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                                                    ,style: TextStyle(
                                                      fontFamily: 'Roboto-regular',
                                                      fontSize: 11.0,
                                                      color: AppColors.appColor12
                                                  ),),
                                                ],
                                              ),
                                            )
                                        ),
                                        Container(
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                                                      'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                                                      ,style: TextStyle(
                                                        fontFamily: 'Roboto-regular',
                                                        fontSize: 11.0,
                                                        color: AppColors.appColor12
                                                    ),),
                                                  ],
                                                )
                                            )
                                        ),
                                      ]
                                      [_tabIndex],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),

                          Divider(color: AppColors.appColor22,height: 10.0,thickness: 1,),
                          SizedBox(height: 10.0,),
                          Text('Reviews',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: AppColors.appColor19,
                                fontSize: 16.0,
                              fontFamily: 'Roboto-Medium',

                            ),),
                          SizedBox(height: 10.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: AppColors.primaryBackGroundColor
                                ),
                                height: 35.0,
                                width: 47.0,
                                alignment: Alignment.center,
                                child: Text('4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                    fontFamily: 'Roboto-Medium',
                                  ),),
                              ),

                              RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(text: '  '),
                                        WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 21.0,width: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 21.0,width: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 21.0,width: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 21.0,width: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star_half.png',height: 21.0,width: 21,)
                                        ),
                                      ]
                                  )
                              ),
                              Spacer(),
                              Text('Overall 510 Reviews',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: AppColors.appColor20,
                                    fontFamily: 'Roboto-Light',
                                    fontSize: 14.0
                                ),)

                            ],
                          ),
                          SizedBox(height: 12.0,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
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
                                    height: 55.0,
                                    width: 47.0,
                                    color: AppColors.appColor28,
                                    child: Image.asset('assets/icon/team_circle.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4.0),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Text('Part Thettick',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color: AppColors.appColor20,
                                                          fontFamily: 'Roboto-Regular',
                                                          fontSize: 17.0
                                                      ),)),
                                                Text('2 hour ago',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: AppColors.appColor20,
                                                      fontSize: 12.0,
                                                    fontFamily: 'Roboto-Regular'
                                                  ),)
                                              ],
                                            ),
                                            SizedBox(height: 5.0,),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontFamily: 'Roboto-Regular',
                                                        fontSize: 16
                                                    ),
                                                    children: [
                                                      WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star_half.png',height: 15.0,width: 16.0,)
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
                          SizedBox(height: 10.0,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
                              'tempor incididunt ut labore',
                            style: TextStyle(
                                color: AppColors.appColor20,
                                fontSize: 12.0,
                              fontFamily: 'Roboto-Light'
                            ),
                          ),
                          Divider(color: AppColors.appColor22,height: 20.0,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
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
                                    height: 55.0,
                                    width: 47.0,
                                    color: AppColors.appColor28,
                                    child: Image.asset('assets/icon/team_circle.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4.0),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Text('Part Thettick',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color: AppColors.appColor20,
                                                          fontFamily: 'Roboto-Regular',
                                                          fontSize: 17.0
                                                      ),)),
                                                Text('2 hour ago',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: AppColors.appColor20,
                                                      fontSize: 12.0,
                                                      fontFamily: 'Roboto-Regular'
                                                  ),)
                                              ],
                                            ),
                                            SizedBox(height: 5.0,),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontFamily: 'Roboto-Regular',
                                                        fontSize: 16
                                                    ),
                                                    children: [
                                                      WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 15.0,width: 15.0,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star_half.png',height: 15.0,width: 16.0,)
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
                          SizedBox(height: 10.0,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
                              'tempor incididunt ut labore',
                            style: TextStyle(
                                color: AppColors.appColor20,
                                fontSize: 12.0,
                                fontFamily: 'Roboto-Light'
                            ),
                          ),
                          SizedBox(height: 20.0,),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 14.0,
              left: 0,
              child: Container(
                width: width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context,true);
                      },
                      child: Container(
                        height: 50.0,
                        width: 60.0,
                        transform: Matrix4.translationValues(-3.0, 0, 0),
                        child: Center(
                          child:Image.asset('assets/icons/back_arrrow.png',
                            fit: BoxFit.fill,
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/icons/heart_border.png',height: 40.0,width: 40.0,),
                      ),
                    )
                  ],
                ),
              )
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: 70,
                decoration: BoxDecoration(
                color: AppColors.white_00,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                    ),]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon/cart.png',color: AppColors.black,height: 25.0,width: 28.0,),
                              Text('   ADD TO CART',style: TextStyle(
                                  color: AppColors.appColor29,
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Bold'
                              ),),
                            ],
                          ),
                        )
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            color: AppColors.primaryBackGroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 14.0),
                            child: Text('BUY NOW',
                            style: TextStyle(
                              color: AppColors.white_00,
                                fontFamily: 'Roboto-Bold'
                            ),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
                            },
                          )
                        )
                    ),
                  ],
                ),
              )
            ),

          ],
        ),
      )
    );
  }
}
