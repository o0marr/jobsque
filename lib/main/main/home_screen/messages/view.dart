import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/main/main/home_screen/mail/view.dart';
import 'package:jobsque/main/main/home_screen/messages/archive/view.dart';
import 'package:jobsque/main/main/home_screen/messages/unread/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';

import '../../../../../core/design/app_input.dart';
import '../../../../core/logic/helper_methods.dart';
import '../hi/view.dart';


class MessagesView extends StatefulWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messsages",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 24,right: 24),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Row(
                children: [
                  Container(
                    width: 267,
                    child: AppInput(label: "Search",

                        prefixIcon: "search-normal.png"),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    width: 80,
                    height: 48,

                    child: IconButton(onPressed: () {
                      {
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
                                      Text("Message filters",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
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
                                                width: 10,
                                              ),
                                              Text("Unread",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                              Spacer(),
                                              IconButton(
                                                  onPressed: () {
                                                    navigateTo(UnreadView());
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
                                                width: 10,
                                              ),
                                              Text("Spam",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
                                                width: 10,
                                              ),
                                              Text("Archived",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                              Spacer(),
                                              IconButton(
                                                  onPressed: () {
                                                    navigateTo(ArchiveView());
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
                      };
                    }, icon: AppImage("setting-4.png")),
                  ),


                ],
              ),
              SizedBox(height: 28,),
             IconButton(onPressed: () {
               navigateTo(MailView());
             }, icon: Container(
               width: 327,
               height: 54,
               child: Row(children: [
                 AppImage("Twitter.png",width: 40,height: 40,),
                 Spacer(),
                 Column(
                   children: [
                     Text("Twitter",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                     SizedBox(height: 4,),
                     Text("Here is the link: http://zoom.com/abcdeefg",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                   ],
                 ),
                 Spacer(),
                 Text("12.39"),


               ]),
             ),),

              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: 327,
                height: 54,
                child: Row(children: [
                  AppImage("Gojek.png",width: 40,height: 40,),
                  Spacer(),
                  Column(
                    children: [
                      Text("Gojek Indonesia",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text("Let’s keep in touch.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                    ],
                  ),
                  Spacer(),
                  Text("12.39"),


                ]),
              ),
              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: 327,
                height: 54,
                child: Row(children: [
                  AppImage("Shoope.png",width: 40,height: 40,),
                  Spacer(),
                  Column(
                    children: [
                      Text("Shoope",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text("Thank You David!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                    ],
                  ),
                  Spacer(),
                  Text("09.45"),


                ]),
              ),
              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: 327,
                height: 54,
                child: Row(children: [
                  AppImage("Dana.png",width: 40,height: 40,),
                  Spacer(),
                  Column(
                    children: [
                      Text("Dana",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text("Thank you for your attention!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                    ],
                  ),
                  Spacer(),
                  Text("Yesterday"),


                ]),
              ),
              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: 327,
                height: 54,
                child: Row(children: [
                  AppImage("Slack (2).png",width: 40,height: 40,),
                  Spacer(),
                  Column(
                    children: [
                      Text("Slack",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text("You: I look forward to hearing from you",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                    ],
                  ),
                  Spacer(),
                  Text("12/8"),


                ]),
              ),
              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: 327,
                height: 54,
                child: Row(children: [
                  AppImage("Facebook.png",width: 40,height: 40,),
                  Spacer(),
                  Column(
                    children: [
                      Text("Facebook",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text("You: What about the interview stage?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                    ],
                  ),
                  Spacer(),
                  Text("12.39"),


                ]),
              ),
              SizedBox(height: 12,),
              Container(
                width: 327,
                height: 1,
                color: Color(0xffE5E7EB),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
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
            if (newIndex == 3) {
              navigateTo(SavedView());
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
