import 'package:flutter/material.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';

import '../../../../../core/design/app_image.dart';
import '../../../../../core/design/app_input.dart';
import '../../../../../core/logic/helper_methods.dart';

class ArchiveView extends StatefulWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  State<ArchiveView> createState() => _ArchiveViewState();
}

class _ArchiveViewState extends State<ArchiveView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messsages",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 24),
                child: Container(
                  width: 367,
                  child: AppInput(label: "Search",

                      prefixIcon: "search-normal.png"),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 24,right: 24,top: 48),

                child: Column(
                  children: [
                    SizedBox(height: 21,),
                    AppImage("Data23.png",
                      height: 142,
                      width: 173,
                    ),
                    SizedBox(height: 24,),
                    Text("You have not received any\n messages",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
                    SizedBox(height: 12,),
                    Text("Once your application has reached the interview\n stage, you will get a message from the recruiter.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff6B7280)),),
                    SizedBox(height: 130,),
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
            }
            ;
            if (newIndex == 1) {
              navigateTo(MessagesView());
            }
            ;
            if (newIndex == 3) {
              navigateTo(SavedView());
            }
            ;
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
