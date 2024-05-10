import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/main/apply_job/view.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/saved/empty_save/view.dart';
import 'package:jobsque/main/main/profile/view.dart';

class SavedView extends StatefulWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Saved",
        style: TextStyle(color: Colors.black),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 36,
              color: Color(0xffF4F4F5),
              child: Center(
                  child: Text(
                "12 Jobs Saved",
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Twitter.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Twitter • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 1);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Spectrum.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Spectrum • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "VK.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "VK • Yogyakarta, Indonesia",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Discord.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UX Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Discord • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Invision.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Junior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Invision • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Twitter.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Twitter • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Spectrum.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Spectrum • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "VK.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "VK • Yogyakarta, Indonesia",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Discord.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UX Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Discord • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Invision.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Junior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Invision • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Twitter.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Twitter • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 80,
              child: Column(
                children: [
                  Row(children: [
                    AppImage(
                      "Spectrum.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "UI Designer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Spectrum • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.separated(
                                  clipBehavior: Clip.antiAlias,
                                  itemBuilder: (context, index) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 36,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons.archive),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Apply Job"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .cloud_upload_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Share via..."),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              width: 327,
                                              height: 49,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Color(0xffD1D5DB)),
                                              child: Column(children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                        Icons.archive_outlined),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Cancel save"),
                                                    Spacer(),
                                                    IconButton(
                                                        onPressed: () {
                                                          navigateTo(
                                                              EmptyView());
                                                        },
                                                        icon: Icon(Icons
                                                            .arrow_forward_ios_outlined))
                                                  ],
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 150,
                                      ),
                                  itemCount: 3);
                            },
                          );
                        },
                        icon: Icon(Icons.more_horiz_rounded))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Posted 2 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "Be an early applicant",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff374151),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),bottomNavigationBar: BottomNavigationBar(
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
