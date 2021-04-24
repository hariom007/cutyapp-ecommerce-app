import 'package:carousel_slider/carousel_slider.dart';
import 'package:cutyapp/UI_DashBoard/CheckOut/addNewAddress.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String _chosenValue;

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/icon/Image1.png',
    'assets/icon/Image2.png',
    'assets/icon/Image3.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.appColor6,
      body: Stack(
        children: [
          ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 350,
                      color: AppColors.appColor6,
                      child: Column(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 240.0,
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
                                        height: MediaQuery.of(context).size.height,
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
                                  child: Container(
                                    width: 90.0,
                                    height: 90.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    child: Image.asset(url,fit: BoxFit.fill,),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: AppColors.white_00,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0,),
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
                                          color: AppColors.black,
                                          fontSize: 20
                                      ),),
                                  )),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: AppColors.appColor7,
                                child: Icon(Icons.share,color: AppColors.black,),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Text(
                            'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
                            ,style: TextStyle(
                              fontFamily: 'Roboto-Thin',
                              fontSize: 14.0,
                              color: AppColors.black
                          ),),
                          SizedBox(height: 20.0,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontFamily: 'Roboto-Regular',
                                              fontSize: 18
                                          ),
                                          children: [
                                            TextSpan(
                                                text: '75.99 '
                                            ),
                                            TextSpan(
                                                text: 'QAR '
                                            ),
                                            TextSpan(
                                              text: '  75.99 QAR',
                                              style: TextStyle(
                                                  color: AppColors.primaryBackGroundColor,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 16
                                              ),
                                            ),
                                            TextSpan(
                                              text: '    21% off ',
                                              style: TextStyle(
                                                  color: AppColors.appColor4,
                                                  fontFamily: 'Roboto-Regular',
                                                  fontSize: 16
                                              ),
                                            ),
                                          ]
                                      )
                                  )),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontFamily: 'Roboto-Regular',
                                          fontSize: 16
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
                          SizedBox(height: 20.0,),
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
                                        fontSize: 18
                                    ),)),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.6),
                                    borderRadius: BorderRadius.circular(5.0)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                                child: DropdownButton<String>(
                                  focusColor:Colors.white,
                                  isDense: true,
                                  value: _chosenValue,
                                  //elevation: 5,
                                  style: TextStyle(color: Colors.white),
                                  iconEnabledColor:Colors.black,
                                  iconSize: 26.0,
                                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                                  items: <String>[
                                    '1', '2', '3',
                                    '4', '5', '6',
                                    '7','8','9'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,style:TextStyle(color:Colors.black),),
                                    );
                                  }).toList(),
                                  hint:Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
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
                          SizedBox(height: 20.0,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Product description',
                              suffixText: 'Shopping Info',
                              hintStyle: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 18
                              ),
                              suffixStyle: TextStyle(
                                  color: AppColors.black,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 18
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Divider(),
                          Text('Reviews',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18
                            ),),
                          SizedBox(height: 20.0,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: AppColors.primaryBackGroundColor
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                                child: Text('4.6',
                                  style: TextStyle(
                                      fontSize: 18
                                  ),),
                              ),

                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontFamily: 'Roboto-Regular',
                                          fontSize: 16
                                      ),
                                      children: [
                                        TextSpan(text: "  "),
                                        WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star.png',height: 20,)
                                        ),WidgetSpan(
                                            child: Image.asset('assets/icon/star_half.png',height: 20,)
                                        ),
                                      ]
                                  )
                              ),
                              Spacer(),

                              Text('Overall 510 Reviews',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 15
                                ),)

                            ],
                          ),
                          SizedBox(height: 20.0,),
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
                                    height: 120,
                                    width: 100,
                                    child: Image.asset('assets/icon/team_square.png',
                                      fit: BoxFit.contain,),
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Text('Para Pattrick',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color: AppColors.black,
                                                          fontSize: 18
                                                      ),)),
                                                Text('2 hour ago',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 16
                                                  ),)
                                              ],
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
                                                      WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star_half.png',height: 20,)
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
                                color: AppColors.black,
                                fontSize: 14
                            ),
                          ),
                          Divider(color: AppColors.grey_70,height: 30,),
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
                                    height: 120,
                                    width: 100,
                                    child: Image.asset('assets/icon/team_square.png',
                                      fit: BoxFit.contain,),
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Text('Para Pattrick',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color: AppColors.black,
                                                          fontSize: 18
                                                      ),)),
                                                Text('2 hour ago',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 16
                                                  ),)
                                              ],
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
                                                      WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star.png',height: 20,)
                                                      ),WidgetSpan(
                                                          child: Image.asset('assets/icon/star_half.png',height: 20,)
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
                                color: AppColors.black,
                                fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 60,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.white_00,
                        child: Icon(Icons.favorite_outline_rounded),
                      ),
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
                border: Border(
                  top: BorderSide(width: 0.2,color: AppColors.primaryBackGroundColor)
                )
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
                            Image.asset('assets/icon/cart.png',color: AppColors.black,),
                            Text('   ADD TO CART',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                fontSize: 14,
                                fontFamily: 'Montserrat-semibold'
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
                          padding: EdgeInsets.symmetric(vertical: 14.0),
                          child: Text('BUY NOW',
                          style: TextStyle(
                            color: AppColors.white_00,
                              fontFamily: 'Montserrat-semibold'
                          ),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewAddress()));
                          },
                        )
                      )
                  ),
                ],
              ),
            )
          ),

        ],
      )
    );
  }
}
