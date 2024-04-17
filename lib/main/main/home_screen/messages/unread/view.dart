import 'package:flutter/material.dart';
import 'package:jobsque/main/main/home_screen/mail/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';

import '../../../../../core/design/app_image.dart';
import '../../../../../core/design/app_input.dart';
import '../../../../../core/logic/helper_methods.dart';
import '../../hi/view.dart';


class UnreadView extends StatefulWidget {
  const UnreadView({Key? key}) : super(key: key);

  @override
  State<UnreadView> createState() => _UnreadViewState();
}

class _UnreadViewState extends State<UnreadView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messsages",style: TextStyle(color: Colors.black),),),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Padding(
            padding:  EdgeInsets.only(left: 24),
            child: Container(
            width: 367,
            child: AppInput(label: "Search",

                prefixIcon: "search-normal.png"),
                    ),
          ),
          SizedBox(width: 12,),
          Container(
            width: double.infinity,
            height: 36,
            color: Color(0xffF4F4F5),
            child: Center(
                child: Row(
                  children: [
                    Text(
                      "Unread",
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("Read all messages",
                        style: TextStyle(
                            color: Color(0xff3366FF ),
                            fontWeight: FontWeight.w400,
                            fontSize: 18),),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 21,),
              Padding(
                padding:  EdgeInsets.only(left: 34,right: 24),
                child: Column(
                  children: [
                    IconButton(onPressed: () {
                      navigateTo(MailView());
                    }, icon:Container(
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
                    ), ),

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
                  ],
                ),
              ),
        ]),
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
