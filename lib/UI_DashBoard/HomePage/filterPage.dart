import 'package:cutyapp/Values/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import 'drawerPage.dart';
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  RangeValues _currentRangeValues = const RangeValues(0, 1000);

  bool _isChecked = true;

  // Declare this variable
  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size. fromHeight(65.0), // here the desired height.
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Container(
              width: width,
              padding: EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 5),
              decoration: BoxDecoration(
                  color: AppColors.white_00
              ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FilterPage()));
                    },
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: AppColors.primaryBackGroundColor,
                      child: Image.asset('assets/icons/menu_icon.png',
                        height: 34.0,
                        fit: BoxFit.fill,
                        width: 34.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Image.asset('assets/icons/toggle_icon.png',
                            height: 40.0,
                            fit: BoxFit.fitHeight,
                            width: 40.0,
                          ),
                          onPressed: () => _scaffoldKey.currentState.openDrawer(),
                        ),
                      )
                  )

                ],
              ),
            ),
          )
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child:Container(
          decoration: BoxDecoration(
              color: AppColors.white_00,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )
          ),
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  SizedBox(height: 30.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                image: AssetImage('assets/icon/Rectangle2.png'),
                                fit: BoxFit.fill
                            ),
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_back_ios_outlined,size: 20,color: AppColors.white_00,),
                          ),
                        ),
                      ),
                      Text("   Filter",
                        style: TextStyle(
                            color: AppColors.appColor15,
                            fontFamily: 'Roboto-Regular',
                            fontSize: 20,

                        ),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            color: AppColors.appColor15,
                            fontFamily: 'Roboto-Medium',
                            fontSize: 18
                        ),),
                      SizedBox(height: 10.0,),

                    ],
                  ),
                  CheckboxListTile(
                    value: _isChecked,
                    dense: true,
                    onChanged: (bool val) => setState(() => _isChecked = val),
                    title: Text("SubCategory 1",
                      style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        color: AppColors.appColor15,
                        fontSize: 14
                      ),
                    ),
                    activeColor: AppColors.primaryBackGroundColor,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  CheckboxListTile(
                    value: _isChecked,
                    dense: true,
                    onChanged: (bool val) => setState(() => _isChecked = val),
                    title: Text("SubCategory 2",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    activeColor: AppColors.primaryBackGroundColor,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  CheckboxListTile(
                    value: _isChecked,
                    dense: true,
                    onChanged: (bool val) => setState(() => _isChecked = val),
                    title: Text("SubCategory 3",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    activeColor: AppColors.primaryBackGroundColor,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  CheckboxListTile(
                    value: _isChecked,
                    dense: true,
                    onChanged: (bool val) => setState(() => _isChecked = val),
                    title: Text("SubCategory 4",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    activeColor: AppColors.primaryBackGroundColor,
                    controlAffinity: ListTileControlAffinity.trailing,
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
                              color: AppColors.appColor15,
                              fontSize: 18,
                            fontFamily: 'Roboto-Medium'
                          ),),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRadioTile,
                    title: Text("SubCategory 1",
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            color: AppColors.appColor15,
                            fontSize: 14
                        ),),
                    onChanged: (val) {
                      setSelectedRadioTile(val);
                    },
                    dense: true,
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: AppColors.primaryBackGroundColor,
                    selected: true,
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRadioTile,
                    title: Text("SubCategory 1",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    onChanged: (val) {
                      setSelectedRadioTile(val);
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    dense: true,
                    activeColor: AppColors.primaryBackGroundColor,
                    selected: true,
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: selectedRadioTile,
                    dense: true,
                    title: Text("SubCategory 1",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    onChanged: (val) {
                      setSelectedRadioTile(val);
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: AppColors.primaryBackGroundColor,
                    selected: true,
                  ),
                  RadioListTile(
                    value:4,
                    dense: true,
                    groupValue: selectedRadioTile,
                    title: Text("SubCategory 1",
                      style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: AppColors.appColor15,
                          fontSize: 14
                      ),),
                    onChanged: (val) {
                      setSelectedRadioTile(val);
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: AppColors.primaryBackGroundColor,
                    selected: true,
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: RaisedButton(
                            onPressed: (){
                            },
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            color: AppColors.appColor3,
                            child: Text('RESET',
                                style: TextStyle(
                                    fontFamily: 'Montserrat-Semibold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.white_00
                                )
                            ),
                          ),),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: RaisedButton(
                            onPressed: (){
                            },
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            color: AppColors.primaryBackGroundColor,
                            child: Text('RESET',
                                style: TextStyle(
                                    fontFamily: 'Montserrat-Semibold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.white_00
                                )
                            ),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ],
          )
        )
      ),
    );
  }
}


/*Container(
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
                                              Navigator.pop(context,true);
                                            },
                                            child: Container(
                                              height: 60,
                                              width: 70,
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/icon/Rectangle2.png'),
                                                    fit: BoxFit.fill
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(Icons.arrow_back_ios_outlined,size: 20,color: AppColors.white_00,),
                                              ),
                                            ),
                                          ),
                                          Text("   Filter",
                                            style: TextStyle(
                                                color: AppColors.black,
                                                fontFamily: 'Montserrat-semibold',
                                                fontSize: 16
                                            ),),

                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 100,),
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
                                            setState(() {
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
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                child: Row(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: TextStyle(
                                                            fontFamily: 'Montserrat-SemiBold',
                                                            color: AppColors.black,
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
                                                            fontFamily: 'Montserrat-SemiBold',
                                                            color: AppColors.black,
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
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Text('Category 1',
                                                  style: TextStyle(
                                                      color: AppColors.black
                                                  ),)
                                            ),
                                            Checkbox(
                                                value: rememberMe,
                                                onChanged: _onRememberMeChanged
                                            ),


                                          ],
                                        ),
                                        CheckboxListTile(
                                          value: _isChecked,
                                          dense: true,
                                          onChanged: (bool val) => setState(() => _isChecked = val),
                                          title: Text("SubCategory 2"),
                                          activeColor: AppColors.primaryBackGroundColor,
                                          controlAffinity: ListTileControlAffinity.trailing,
                                        ),
                                        CheckboxListTile(
                                          value: _isChecked,
                                          dense: true,
                                          onChanged: (bool val) => setState(() => _isChecked = val),
                                          title: Text("SubCategory 3"),
                                          activeColor: AppColors.primaryBackGroundColor,
                                          controlAffinity: ListTileControlAffinity.trailing,
                                        ),
                                        CheckboxListTile(
                                          value: _isChecked,
                                          dense: true,
                                          onChanged: (bool val) => setState(() => _isChecked = val),
                                          title: Text("SubCategory 4"),
                                          activeColor: AppColors.primaryBackGroundColor,
                                          controlAffinity: ListTileControlAffinity.trailing,
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
                                                    fontSize: 16
                                                ),),
                                              SizedBox(height: 10.0,),
                                            ],
                                          ),
                                        ),
                                        RadioListTile(
                                          value: 1,
                                          groupValue: selectedRadioTile,
                                          title: Text("SubCategory 1",
                                            style: TextStyle(
                                                color: AppColors.black
                                            ),),
                                          onChanged: (val) {
                                            setSelectedRadioTile(val);
                                          },
                                          dense: true,
                                          controlAffinity: ListTileControlAffinity.trailing,
                                          activeColor: AppColors.primaryBackGroundColor,
                                          selected: true,
                                        ),
                                        RadioListTile(
                                          value: 2,
                                          groupValue: selectedRadioTile,
                                          title: Text("SubCategory 1",
                                            style: TextStyle(
                                                color: AppColors.black
                                            ),),
                                          onChanged: (val) {
                                            setSelectedRadioTile(val);
                                          },
                                          controlAffinity: ListTileControlAffinity.trailing,
                                          dense: true,
                                          activeColor: AppColors.primaryBackGroundColor,
                                          selected: true,
                                        ),
                                        RadioListTile(
                                          value: 3,
                                          groupValue: selectedRadioTile,
                                          dense: true,
                                          title: Text("SubCategory 1",
                                            style: TextStyle(
                                                color: AppColors.black
                                            ),),
                                          onChanged: (val) {
                                            setSelectedRadioTile(val);
                                          },
                                          controlAffinity: ListTileControlAffinity.trailing,
                                          activeColor: AppColors.primaryBackGroundColor,
                                          selected: true,
                                        ),
                                        RadioListTile(
                                          value:4,
                                          dense: true,
                                          groupValue: selectedRadioTile,
                                          title: Text("SubCategory 1",
                                            style: TextStyle(
                                                color: AppColors.black
                                            ),),
                                          onChanged: (val) {
                                            setSelectedRadioTile(val);
                                          },
                                          controlAffinity: ListTileControlAffinity.trailing,
                                          activeColor: AppColors.primaryBackGroundColor,
                                          selected: true,
                                        ),
                                        SizedBox(height: 10.0,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: RaisedButton(
                                                  onPressed: (){
                                                  },
                                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(6.0),
                                                  ),
                                                  color: AppColors.appColor3,
                                                  child: Text('RESET',
                                                      style: TextStyle(
                                                          fontFamily: 'Montserrat-Semibold',
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                          color: AppColors.white_00
                                                      )
                                                  ),
                                                ),),
                                              SizedBox(width: 10.0,),
                                              Expanded(
                                                child: RaisedButton(
                                                  onPressed: (){
                                                  },
                                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(6.0),
                                                  ),
                                                  color: AppColors.primaryBackGroundColor,
                                                  child: Text('RESET',
                                                      style: TextStyle(
                                                          fontFamily: 'Montserrat-Semibold',
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                          color: AppColors.white_00
                                                      )
                                                  ),
                                                ),),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30,)
                                      ],
                                    ),
                                  ],
                                )
                            )*/