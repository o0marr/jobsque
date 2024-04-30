import 'package:flutter/material.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/main/profile/Phone_number/view.dart';
import 'package:jobsque/main/main/profile/change_password/view.dart';
import 'package:jobsque/main/main/profile/email_address/view.dart';
import 'package:jobsque/main/main/profile/two_step_verification/view.dart';

class LoginAndSecurityView extends StatelessWidget {
  const LoginAndSecurityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login and security",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 24, top: 36, right: 24),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 36,
              color: Color(0xffF4F4F5),
              child: Center(
                  child: Text(
                    "Accont access",
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Text("Email address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                Spacer(),
                Text("rafifdian12@gmail.com",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                IconButton(onPressed: () {
                  navigateTo(EmailAddressView());
                }, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 20,),
            Row(
              children: [
                  Text("Phone number",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                Spacer(),
                IconButton(onPressed: () {
                  navigateTo(PhonenumberView());
                }, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Change password",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                Spacer(),
                IconButton(onPressed: () {
                  navigateTo(ChangePasswordView());
                }, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Two-step verification",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                Spacer(),
                Text("Non active",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
                IconButton(onPressed: () {
                  navigateTo(TwoStepVerificationView());
                }, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Face ID",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                Spacer(),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.arrow_forward))
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 20,),
          ],
        ),
      )),
    );
  }
}
