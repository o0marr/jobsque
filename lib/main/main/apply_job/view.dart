import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/file_picker.dart';
import 'package:jobsque/features/main/home_screen/filter/get_all_jobs/bloc.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';
import 'package:jobsque/main/main/apply_job/upload_profile/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';
import 'package:jobsque/main/main/profile/view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/design/app_image.dart';
import '../../../core/design/app_input.dart';
import '../../../core/logic/helper_methods.dart';
import '../home_screen/hi/view.dart';

class ApplyJobView extends StatefulWidget {
  const ApplyJobView({Key? key}) : super(key: key);

  @override
  State<ApplyJobView> createState() => _ApplyJobViewState();
}

class _ApplyJobViewState extends State<ApplyJobView> {
  final bloc = GetIt.I<GetAllJobsBloc>()..add(GetGetAllJobsEvent());

  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.mail),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.archive_outlined),
    Icon(Icons.person),
  ];
  List<String> items = [
    "Active",
    "Rejected",
  ];
  int _currentPage = 0;
  late PageController _pageController;
  bool isSelected = false;
  bool isSelected5 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
      isSelected2 = !isSelected2;
      isSelected3 = !isSelected3;
      isSelected4 = !isSelected4;
      isSelected5 = !isSelected5;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Applied Job",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(onPressed: () {

        }, icon: Icon(Icons.arrow_back)),
      ),
      body:  Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32, left: 15),
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
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Container(
                                  width: double.infinity,
                                  height: 36,
                                  color: Color(0xffF4F4F5),
                                  child: Text(
                                    "3 Jobs",
                                    style: TextStyle(
                                        color: Color(0xff6B7280),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Column(
                                children: [
                                  Container(
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            AppImage(
                                              "Zoom.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Product Designer",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  "Zoom • United States",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: toggleSelection,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: AppImage(isSelected2
                                                    ? "archive.png"
                                                    : "archive_selected.png"),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text("FullTime"),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text(
                                              "Remote",
                                            ),
                                          ),
                                          Spacer(),
                                          Text("Posted 2 days ago"),
                                        ]),
                                        Container(
                                          height: 100,
                                          width: 327,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8)),
                                          padding: EdgeInsets.only(
                                              top: 12, right: 10, bottom: 12, left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("1"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Biodata",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 20,
                                                        child: IconButton(
                                                          onPressed: () {
                                                            navigateTo(ApplyView());
                                                          },
                                                          icon: Text("2"),
                                                        )),
                                                    Text(
                                                      "Type of work",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("3"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Upload portfolio",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ])),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            AppImage(
                                              "Zoom.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Product Designer",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  "Zoom • United States",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: toggleSelection,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: AppImage(isSelected3
                                                    ? "archive.png"
                                                    : "archive_selected.png"),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text("FullTime"),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text(
                                              "Remote",
                                            ),
                                          ),
                                          Spacer(),
                                          Text("Posted 2 days ago"),
                                        ]),
                                        Container(
                                          height: 100,
                                          width: 327,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8)),
                                          padding: EdgeInsets.only(
                                              top: 12, right: 10, bottom: 12, left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("1"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Biodata",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 20,
                                                        child: IconButton(
                                                          onPressed: () {
                                                            navigateTo(ApplyView());
                                                          },
                                                          icon: Text("2"),
                                                        )),
                                                    Text(
                                                      "Type of work",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("3"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Upload portfolio",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ])),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            AppImage(
                                              "Zoom.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Product Designer",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  "Zoom • United States",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: toggleSelection,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: AppImage(isSelected4
                                                    ? "archive.png"
                                                    : "archive_selected.png"),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text("FullTime"),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text(
                                              "Remote",
                                            ),
                                          ),
                                          Spacer(),
                                          Text("Posted 2 days ago"),
                                        ]),
                                        Container(
                                          height: 100,
                                          width: 327,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8)),
                                          padding: EdgeInsets.only(
                                              top: 12, right: 10, bottom: 12, left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("1"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Biodata",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 20,
                                                        child: IconButton(
                                                          onPressed: () {
                                                            navigateTo(ApplyView());
                                                          },
                                                          icon: Text("2"),
                                                        )),
                                                    Text(
                                                      "Type of work",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("3"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Upload portfolio",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ])),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            AppImage(
                                              "Zoom.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Product Designer",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  "Zoom • United States",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: toggleSelection,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: AppImage(isSelected5
                                                    ? "archive.png"
                                                    : "archive_selected.png"),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text("FullTime"),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 60,
                                            height: 26,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                                color: Color(0xffD6E4FF)),
                                            child: Text(
                                              "Remote",
                                            ),
                                          ),
                                          Spacer(),
                                          Text("Posted 2 days ago"),
                                        ]),
                                        Container(
                                          height: 100,
                                          width: 327,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8)),
                                          padding: EdgeInsets.only(
                                              top: 12, right: 10, bottom: 12, left: 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("1"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Biodata",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 20,
                                                        child: IconButton(
                                                          onPressed: () {
                                                            navigateTo(ApplyView());
                                                          },
                                                          icon: Text("2"),
                                                        )),
                                                    Text(
                                                      "Type of work",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          isSelected
                                                              ? Colors.black
                                                              : Colors.blue;
                                                          navigateTo(ApplyView());
                                                        },
                                                        icon: Text("3"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Upload portfolio",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ])),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 38, right: 37, top: 121),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppImage(
                            "Saved.png",
                            height: 142,
                            width: 173,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Nothing has been saved yet",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Press the star icon on the job you want to save.",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff6B7280)),
                          ),
                          SizedBox(
                            height: 130,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
            if (newIndex == 0) {
              navigateTo(HiView());
            };
            if (newIndex == 1) {
              navigateTo(MessagesView());
            };
            if (newIndex == 2) {
              navigateTo(ApplyJobView());
            };
            if (newIndex == 3) {
              navigateTo(SavedView());
            };
            if (newIndex == 4) {
              navigateTo(ProfileView());
            };
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.black,
            ),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: "Applied",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
              color: Colors.black,
            ),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
