import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/main/home_screen/hi/submited/view.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';

import '../apply/view.dart';


class UploadProfileView extends StatelessWidget {
  const UploadProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Job",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 38,right: 37,top: 121),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage("Data.png",
                height: 142,
              width: 173,
              ),
              SizedBox(height: 24,),
              Text("Your data has been\n successfully sent",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
              SizedBox(height: 12,),
              Text("You will get a message from our team, about\nthe announcement of employee acceptance",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff6B7280)),),
              SizedBox(height: 130,),
              AppButton(text:
              "Back to home",
                onPress: () async {
                  navigateTo(SubmittedView());
                },

              ),
            ],
          ),
        ),
      ),

    );
  }
}
