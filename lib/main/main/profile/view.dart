import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/main/my_account/profile/profile/bloc.dart';
import 'package:jobsque/main/auth/register/register.dart';
import 'package:jobsque/main/main/apply_job/view.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/messages/view.dart';
import 'package:jobsque/main/main/home_screen/saved/view.dart';
import 'package:jobsque/main/main/profile/edit_profile/view.dart';
import 'package:jobsque/main/main/profile/help_center/view.dart';
import 'package:jobsque/main/main/profile/language/view.dart';
import 'package:jobsque/main/main/profile/login_and_security/view.dart';
import 'package:jobsque/main/main/profile/notification/view.dart';
import 'package:jobsque/main/main/profile/privacy_policy/view.dart';
import 'package:jobsque/main/main/profile/terms_conditions/view.dart';

import '../../../core/design/app_image.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final bloc = GetIt.I<ProfileBloc>();

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
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            Spacer(),
            Text("Profile", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
            Spacer(),
            IconButton(
              onPressed: () {
                navigateTo(RegisterView());
              },
              icon: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 24, top: 36, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:  AssetImage("assets/images/personi.png"),
                ),
              ),
              SizedBox(height: 16,),
              Text("Rafif Dian Axelingga",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              SizedBox(height: 4,),
              Text("Senior UI/UX Designer",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
              SizedBox(height: 24,),

              Padding(
                padding: EdgeInsets.only(left: 70,),
                child: Row(children: [
                  Column(
                    children: [
                      Text("Applied",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                      SizedBox(height: 4,),
                      Text("46",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    children: [
                      Text("Reviewed",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                      SizedBox(height: 4,),
                      Text("23",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    children: [
                      Text("Contacted",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                      SizedBox(height: 4,),
                      Text("16",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
                    ],
                  ),
                ],),
              ),
              SizedBox(height: 28,),
              Row(
                children: [
                  Text("About",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                  Spacer(),
                  TextButton(onPressed: () {

                  }, child: Text("Edit",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),))
                ],
              ),
              SizedBox(height: 12,),
              Text("I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have\n experience designing UI Design for approximately 1\n year. I am currently joining the Vektora studio team\n based in Surakarta, Indonesia.I am a person who has a\n high spirit and likes to work to achieve what I dream of.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
              SizedBox(height: 36,),
              Container(
                width: double.infinity,
                height: 36,
                color: Color(0xffF4F4F5),
                child: Center(
                    child: Text(
                      "General",
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    )),
              ),
              SizedBox(height: 16,),

              Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("profile.png",width: 22,height: 22,color: Colors.black,))

                  ),
                  SizedBox(width: 14,),
                  Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(EditprofileView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("folder-favorite.png",width: 22,height: 22,color: Colors.black,))

                  ),
                  SizedBox(width: 14,),
                  Text("Portfolio",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(ProfileView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("global.png",width: 22,height: 22,color: Colors.black,))

                  ),
                  SizedBox(width: 14,),
                  Text("Langauge",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(LanguageView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("notification.png",width: 22,height: 22,color: Colors.black,))

                  ),
                  SizedBox(width: 14,),
                  Text("Notification",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(NotificationView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("lock.png",width: 22,height: 22,color: Colors.black,))

                  ),
                  SizedBox(width: 14,),
                  Text("Login and security",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(LoginAndSecurityView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 32,),
              Container(
                width: double.infinity,
                height: 36,
                color: Color(0xffF4F4F5),
                child: Center(
                    child: Text(
                      "Others",
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    )),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text("Help Center",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(HelpCenterView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(TermsConditionsView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {
                    navigateTo(PrivacyPolicyView());
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
              SizedBox(height: 10,),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10,),






            ],
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
