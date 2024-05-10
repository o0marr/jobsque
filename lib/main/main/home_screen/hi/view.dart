import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';
import 'package:jobsque/main/main/apply_job/job_details/view.dart';
import 'package:jobsque/main/main/apply_job/view.dart';
import 'package:jobsque/main/main/home_screen/mail/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/notification/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';
import 'package:jobsque/main/main/home_screen/searches/view.dart';
import 'package:jobsque/main/main/profile/view.dart';

import '../../../../core/logic/helper_methods.dart';

class HiView extends StatefulWidget {
  const HiView({Key? key}) : super(key: key);

  @override
  State<HiView> createState() => _HiViewState();
}

class _HiViewState extends State<HiView> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.mail),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.archive_outlined),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Rafif Dian👋",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                        Text(
                          "Create a better future for yourself here",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff6B7280)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: IconButton(
                          onPressed: () {
                            navigateTo(NotificationView());
                          },
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.cyan,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 28,
                ),

                GestureDetector(
                  onTap: () {
                    navigateTo(SearchesView());
                  },
                  child: AbsorbPointer(
                    child: AppInput(label: "Search",

                        prefixIcon: "search-normal.png"),
                  ),
                ),

                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      "Suggested Job",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    TextButton(onPressed: () {}, child: Text("View all"))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff091A7A)),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Zoom • United States",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff9CA3AF)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                  },
                                  icon: Icon(
                                    Icons.archive_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());

                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(children: [
                          Row(
                            children: [
                              AppImage(
                                "https://cdn.bfldr.com/I6FML9WY/at/pglteg-1lxqf4-ct54fh/slack-icon.svg?format=svg&auto=webp&width=3200",
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
                                    "Slack • United States",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.archive_outlined))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());
                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff091A7A)),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Zoom • United States",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff9CA3AF)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.archive_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());
                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(children: [
                          Row(
                            children: [
                              AppImage(
                                "https://cdn.bfldr.com/I6FML9WY/at/pglteg-1lxqf4-ct54fh/slack-icon.svg?format=svg&auto=webp&width=3200",
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
                                    "Slack • United States",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.archive_outlined))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());
                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff091A7A)),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Zoom • United States",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff9CA3AF)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.archive_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());
                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 183,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(children: [
                          Row(
                            children: [
                              AppImage(
                                "https://cdn.bfldr.com/I6FML9WY/at/pglteg-1lxqf4-ct54fh/slack-icon.svg?format=svg&auto=webp&width=3200",
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
                                    "Slack • United States",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.archive_outlined))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("FullTime"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text(
                                  "Remote",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 80,
                                alignment: Alignment.center,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffD6E4FF)),
                                child: Text("Design"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "12K-15K/Month",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 25,
                                width: 96,
                                child: FilledButton(
                                    onPressed: () {
                                      navigateTo(JobDetails());
                                    }, child: Text("Apply now")),
                              )
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Recent Job",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    TextButton(onPressed: () {}, child: Text("View all"))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 152,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF)),
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
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.archive_outlined,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 26,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text(
                              "Remote",
                            ),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text(
                              "Design",
                            ),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            "15K",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2E8E18)),
                          ),
                          Text("/Month")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 152,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF)),
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
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.archive_outlined,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 26,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text(
                              "Remote",
                            ),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text("Design"),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            "15K",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2E8E18)),
                          ),
                          Text("/Month")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 152,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF)),
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
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.archive_outlined,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 26,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text(
                              "Remote",
                            ),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text("Design"),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            "15K",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2E8E18)),
                          ),
                          Text("/Month")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 152,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF)),
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
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.archive_outlined,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 26,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text(
                              "Remote",
                            ),
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
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xffD6E4FF)),
                            child: Text("Design"),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            "15K",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2E8E18)),
                          ),
                          Text("/Month")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),


                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
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
