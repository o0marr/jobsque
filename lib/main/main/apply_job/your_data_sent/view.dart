import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';
import '../job_details/view.dart';


class YourDataSentView extends StatelessWidget {
  const YourDataSentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          navigateTo(JobDetails());
        },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Apply Job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: Center(
        child: Column(
            children: [
              SizedBox(height: 121,),
              AppImage("Data.png",height: 142,width: 173,),
              SizedBox(height: 24,),
              Text("Your data has been\n  successfully sent",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 12,),
              Text("You will get a message from our team, about\n the announcement of employee acceptance",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 120,),
              AppButton(text:
              "Back to home",
                onPress: () async {
                  navigateTo(HiView());
                },

              ),
        ]),
      ),
    );
  }
}
