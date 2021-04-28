import 'package:cutyapp/UI_DashBoard/HomePage/drawerPage.dart';
import 'package:cutyapp/UI_DashBoard/HomePage/productDetailPage.dart';
import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  HomePage({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class CheckBoxData {
  String id;
  String displayId;
  bool checked;

  CheckBoxData({
    this.id,
    this.displayId,
    this.checked,
  });

  factory CheckBoxData.fromJson(Map<String, dynamic> json) => CheckBoxData(
    id: json["id"] == null ? null : json["id"],
    displayId: json["displayId"] == null ? null : json["displayId"],
    checked: json["checked"] == null ? null : json["checked"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "displayId": displayId == null ? null : displayId,
    "checked": checked == null ? null : checked,
  };
}

class RadioData {
  int id;
  String displayId;

  RadioData({
    this.id,
    this.displayId,
  });

  factory RadioData.fromJson(Map<String, dynamic> json) => RadioData(
    id: json["id"] == null ? null : json["id"],
    displayId: json["displayId"] == null ? null : json["displayId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "displayId": displayId == null ? null : displayId,
  };
}


class _HomePageState extends State<HomePage> {
  RangeValues _currentRangeValues = const RangeValues(0, 1000);

  bool val =false;
  bool val2 =false;

  List<CheckBoxData> checkboxDataList = [
    new CheckBoxData(id: '1', displayId: 'Sub-Category 1', checked: true),
    new CheckBoxData(id: '2', displayId: 'Sub-Category 2', checked: false),
    new CheckBoxData(id: '3', displayId: 'Sub-Category 3', checked: true),
    new CheckBoxData(id: '4', displayId: 'Sub-Category 4', checked: true),
    new CheckBoxData(id: '5', displayId: 'Sub-Category 5', checked: true),
  ];

  List<RadioData> radioDataList = [
    new RadioData(id: 1, displayId: 'Sub-Category 1'),
    new RadioData(id: 2, displayId: 'Sub-Category 2'),
    new RadioData(id: 3, displayId: 'Sub-Category 3'),
    new RadioData(id: 4, displayId: 'Sub-Category 4'),
    new RadioData(id: 5, displayId: 'Sub-Category 5'),
  ];

  @override
  void initState() {
    super.initState();
  }

  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size. fromHeight(65.0), // here the desired height.
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Container(
              width: width,
              // padding: EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 5),
              decoration: BoxDecoration(
                  color: AppColors.white_00,
                image: DecorationImage(
                  image: AssetImage('assets/icons/Sem.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Image.asset('assets/icons/logo.png',fit: BoxFit.fitHeight,)
                      )
                    ),

                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          isDismissible: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            )
                          ),
                          elevation: 0.0,
                          builder: (BuildContext context) {
                            int selectedRadio = 0;
                            return StatefulBuilder(
                              builder: (BuildContext context, StateSetter state) {
                                return Container(
                                  color: AppColors.white_00,
                                    height: height*0.86,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top : 30.0,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 50.0,
                                                  width: 60.0,
                                                  transform: Matrix4.translationValues(-5, 0, 0),
                                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                                  decoration: BoxDecoration(
                                                    color: AppColors.primaryBackGroundColor,
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(21.0),
                                                      bottomRight: Radius.circular(21.0)
                                                    )
                                                  ),
                                                  child: Center(
                                                    child:  ClipRRect(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                        child: Image.asset('assets/icons/top_back_arrow.png',height: 40.0,)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 2.0),
                                                child: Text(" Filter",
                                                  style: TextStyle(
                                                      color: AppColors.appColor15,
                                                      fontFamily: 'Roboto-Medium',
                                                      fontSize: 18.0
                                                  ),),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 100.0,bottom: 40.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                // SizedBox(height: 100,),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                                  child: Text("Prize Range",
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontSize: 16
                                                    ),),
                                                ),
                                                RangeSlider(
                                                  values: _currentRangeValues,
                                                  min: 0,
                                                  max: 1000,
                                                  activeColor: AppColors.primaryBackGroundColor,
                                                  inactiveColor: AppColors.white_90,
                                                  divisions: 1000,
                                                  labels: RangeLabels(
                                                    ""+_currentRangeValues.start.round().toString(),
                                                    _currentRangeValues.end.round().toString(),
                                                  ),
                                                  onChanged: (RangeValues values) {
                                                    state(() {
                                                      _currentRangeValues = values;
                                                    });
                                                  },
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 0),
                                                        child: Row(
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily: 'Roboto-Regular',
                                                                    color: AppColors.appColor15,
                                                                    fontSize: 15
                                                                ),
                                                                children: [
                                                                  TextSpan(
                                                                    text: _currentRangeValues.start.round().toString(),
                                                                  ),
                                                                  TextSpan(
                                                                      text: " QAR"
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily: 'Roboto-Regular',
                                                                    color: AppColors.appColor15,
                                                                    fontSize: 15
                                                                ),
                                                                children: [
                                                                  TextSpan(
                                                                    text: _currentRangeValues.end.round().toString(),
                                                                  ),
                                                                  TextSpan(
                                                                      text: " QAR"
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 20.0,),
                                                      Text("Category",
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 16
                                                        ),),
                                                      SizedBox(height: 10.0,),

                                                    ],
                                                  ),
                                                ),

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: checkboxDataList.map<Widget>((data) {
                                                          return Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                            child: GestureDetector(
                                                              onTap: (){
                                                                state(() {
                                                                  data.checked = !data.checked;
                                                                });
                                                              },
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Expanded(
                                                                      child: Text(data.displayId,
                                                                        style: TextStyle(
                                                                            color: AppColors.appColor15,
                                                                          fontFamily: 'Roboto-Medium'
                                                                        ),)
                                                                  ),
                                                                  Checkbox(
                                                                    value: data.checked,
                                                                    checkColor: AppColors.white_00,
                                                                    activeColor: AppColors.primaryBackGroundColor,
                                                                    onChanged: (bool val) {
                                                                      state(() {
                                                                        data.checked = !data.checked;
                                                                      });
                                                                    },
                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                    },
                                                  ).toList(),
                                                ),

                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(height: 20.0,),
                                                      Text("Category 2",
                                                        style: TextStyle(
                                                            color: AppColors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 16
                                                        ),),
                                                    ],
                                                  ),
                                                ),


                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: radioDataList.map<Widget>((data) {
                                                    return Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                      child: GestureDetector(
                                                        onTap: (){
                                                          state(() {
                                                            selectedRadio = data.id;
                                                          });
                                                        },
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Expanded(
                                                                child: Text(data.displayId,
                                                                  style: TextStyle(
                                                                      color: AppColors.appColor15,
                                                                    fontFamily: 'Roboto-Medium'
                                                                  ),)
                                                            ),
                                                            Radio<int>(

                                                              activeColor: AppColors.primaryBackGroundColor,
                                                              value: data.id,
                                                              groupValue: selectedRadio,
                                                              onChanged: (int value) {
                                                                state(() {
                                                                  selectedRadio = value;
                                                                });
                                                              },
                                                            )

                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  ).toList(),
                                                ),


                                                SizedBox(height: 30,)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child:  Container(
                                            color: AppColors.white_00,
                                            height: 85.0,
                                            width: width,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: RaisedButton(
                                                      onPressed: (){
                                                      },
                                                      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 0),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(6.0),
                                                      ),
                                                      color: AppColors.appColor3,
                                                      child: Text('RESET',
                                                          style: TextStyle(
                                                              fontFamily: 'Roboto-Bold',
                                                              fontSize: 14,
                                                              color: AppColors.white_00
                                                          )
                                                      ),
                                                    ),),
                                                  SizedBox(width: 20.0,),
                                                  Expanded(
                                                    child: RaisedButton(
                                                      onPressed: (){
                                                      },
                                                      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 0),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(6.0),
                                                      ),
                                                      color: AppColors.primaryBackGroundColor,
                                                      child: Text('RESET',
                                                          style: TextStyle(
                                                              fontFamily: 'Roboto-Bold',
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 14.0,
                                                              color: AppColors.white_00
                                                          )
                                                      ),
                                                    ),),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                );
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 45.0,
                        width: 45.0,
                        transform: Matrix4.translationValues(0, 8, 0),
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.grey_70,
                                blurRadius: 3.0,
                                spreadRadius: 0.0,
                                offset: Offset(1.0, 1.0), // shadow direction: bottom right
                              )
                            ],
                          color: AppColors.primaryBackGroundColor
                        ),
                        child: Image.asset('assets/icons/menu_icon.png',
                        fit: BoxFit.fill,),
                      )
                    ),

                    Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Image.asset('assets/icons/toggle_icon.png',
                              // height: 40.0,
                              fit: BoxFit.fill,
                              // width: 40.0,
                            ),
                            onPressed: () => widget.scaffoldKey.currentState.openDrawer(),
                          ),
                        )
                    )

                  ],
                ),
              ),
            ),
          )
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product1.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: val==true ? Image.asset(
                                        'assets/icons/heart_unfill.png',
                                        height: 27.0,width: 27.0,
                                      ) : Image.asset(
                                        'assets/icons/heart_fill.png',
                                        height: 27.0,width: 27.0,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if(val==false){
                                            val = true;
                                          }
                                          else{
                                            val = false;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                        color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product3.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: val2==true ? Image.asset(
                                        'assets/icons/heart_fill.png',
                                        height: 27.0,width: 27.0,
                                      ) : Image.asset(
                                        'assets/icons/heart_unfill.png',
                                        height: 27.0,width: 27.0,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if(val2==false){
                                            val2 = true;
                                          }
                                          else{
                                            val2 = false;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                      color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                            fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product3.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: Image.asset('assets/icons/heart_unfill.png',height: 27.0,width: 27.0,),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                        color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product1.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: Image.asset('assets/icons/heart_fill.png',height: 27.0,width: 27.0,),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                        color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product1.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: Image.asset('assets/icons/heart_fill.png',height: 27.0,width: 27.0,),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                        color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                            },
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: AppColors.white_00,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/icons/product3.png'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                    child: IconButton(
                                      icon: Image.asset('assets/icons/heart_unfill.png',height: 27.0,width: 27.0,),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.primaryBackGroundColor,
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text: TextSpan(
                                                            style: TextStyle(
                                                                color: AppColors.black,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto-Medium',
                                                                fontSize: 13
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                  text: '75.99 '
                                                              ),
                                                              TextSpan(
                                                                  text: 'QAR   '
                                                              ),
                                                            ]
                                                        )
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3.0),
                                                        color: AppColors.appColor26,
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      child: Text('-50%',
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontFamily: 'Roboto-Regular',
                                                        ),),
                                                    )

                                                  ],
                                                ),
                                                SizedBox(height: 3,),
                                                Text('Baking Powder Clean',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'Roboto-Regular',
                                                    color: AppColors.black,
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,),
                                              ],
                                            )
                                        ),
                                        Center(
                                          child: Icon(Icons.add_circle_outline,size:20.0,color: AppColors.appColor27,),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
