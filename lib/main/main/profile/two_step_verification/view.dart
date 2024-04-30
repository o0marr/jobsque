import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/toggle_button.dart';
import 'package:jobsque/main/main/profile/two_step_verification/two_step_verification2/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';


class TwoStepVerificationView extends StatelessWidget {
  const TwoStepVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Two-step verification",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding:EdgeInsets.only(left: 24,top: 36,right: 24),
            child: Container(

              decoration: BoxDecoration(border: Border.all(width: 1),
              borderRadius:BorderRadius.circular(8),

              ),
              width: 327,
              height: 66,
              child: Row(
                children: [
                  Text("Secure your account with\n two-step verification",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff6B7280)),),
                  Spacer(),
                  ToggleButton()
                ],

              ),
            ),
          ),
           SizedBox(height: 32,),
           Container(
              width: 327,
              height: 66,
              child: Row(
                children: [
                  Container(

                     width:44 ,
                    height: 44,
                    decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("lock32.png",width: 22,height: 22,))

                  ),
                  Spacer(),
                  Text("Two-step verification provides additional\n security by asking for a verification code\n every time you log in on another device.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                ],

              ),
            ),
            SizedBox(height: 32,),
            Container(
              width: 327,
              height: 66,
              child: Row(
                children: [
                  Container(

                      width:44 ,
                      height: 44,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: AppImage("external-drive.png",width: 22,height: 22,))

                  ),
                  Spacer(),
                  Text("Adding a phone number or using an\n authenticator will help keep your account\n safe from harm.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                ],

              ),
            ),
            SizedBox(height: 220,),
            AppButton(text:
            "Next",
              onPress: () async {
                navigateTo(TwoStepVerification2View());
              },

            )
        ],),
      )),
    );
  }
}
