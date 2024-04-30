import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/account_set_up/view.dart';

class LocationView extends StatefulWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  List<String> items = [
    "Work From Office",
    "Remote Work",
  ];
  int _currentPage = 0;
  late PageController _pageController;
  bool checked = false;
  bool checked2 = false;
  bool checked3 = false;
  bool checked4 = false;
  bool checked5 = false;
  bool checked6 = false;
  bool checked7 = false;
  bool checked8 = false;
  bool checked9 = false;
  bool checked10 = false;
  bool checked11 = false;
  bool checked12 = false;
  bool checked13 = false;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Where are you prefefred Location?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Let us know, where is the work location you\n want at this time, so we can adjust it.",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff737379)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 32,
              ),
              child: FlutterToggleTab(
                  width: 90,
                  // width in percent
                  borderRadius: 30,
                  height: 50,
                  selectedIndex: _currentPage,
                  selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  unSelectedTextStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  labels: items,
                  selectedLabelIndex: (index) {
                    setState(() {
                      _currentPage = index;
                      _pageController.animateToPage(_currentPage,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    });
                  },
                  isScroll: false),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 439,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Container(),
                  Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(left: 24, right: 24,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Select the country you want for your job",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff737379))),
                            SizedBox(height: 20,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked = !checked;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "america.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "United States",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked2 = !checked2;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked2
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "malasiya.png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Malaysia",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked3 = !checked3;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked3
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "singapore.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Singapore",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked4 = !checked4;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked4
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "indonesia (2).png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Indonesia",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked5 = !checked5;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked5
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "philiphs.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Philiphines",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked6 = !checked6;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked6
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "poland.png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Poland",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked7 = !checked7;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked7
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "india.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "India",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked8 = !checked8;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked8
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "vitnam.png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Vietnam",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked9 = !checked9;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked9
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "chinise.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "China",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked10 = !checked10;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked10
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "canada.png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Canada",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked11 = !checked11;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked11
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "arab.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Saudi Arabia",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked12 = !checked12;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked12
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        AppImage(
                                          "argentina.png",
                                          height: 26,
                                          width: 26,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Argentina",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],),
                            SizedBox(height: 16,),
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked13 = !checked13;
                                  });
                                },
                                child: Container(
                                    height: 42,
                                    width: 151,
                                    decoration: BoxDecoration(
                                        color: checked13
                                            ? Color(0xff84A9FF)
                                            : Color(0xffE5E7EB),
                                        borderRadius: BorderRadius.circular(100)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                          child: AppImage(
                                            "brazil.png",


                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Brazil",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),

                            ],),
                            SizedBox(height: 40,),
                        AppButton(
                          text: "Next",
                          onPress: () async {
                            navigateTo(AccountSetUPView());
                          },
                        )




                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
