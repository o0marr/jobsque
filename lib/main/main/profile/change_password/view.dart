import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/main/main/profile/two_step_verification/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';
import '../Phone_number/view.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change password",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter your old password",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          AppInput(label: ".....Enter your password", prefixIcon: "lock.png",isPassword: true),
        SizedBox(height: 20,),
          Text(
            "Enter your new password",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          AppInput(label: ".....Enter your password", prefixIcon: "lock.png",isPassword: true),
          SizedBox(height: 20,),
          Text(
            "Confirm your new password",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          AppInput(label: ".....Enter your password", prefixIcon: "lock.png",isPassword: true),
          SizedBox(height: 150,),
        AppButton(text:
        "Save",
          onPress: () async {
            navigateTo(TwoStepVerificationView());
          },

        )
        ],
      ),
      )),
    );
  }
}
