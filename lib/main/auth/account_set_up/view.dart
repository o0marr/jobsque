import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/main/auth/create_password/view.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';

import '../../../core/design/app_image.dart';
import '../../../core/logic/helper_methods.dart';


class AccountSetUPView extends StatelessWidget {
  const AccountSetUPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: AppImage(
                    "Success.png",
                    height: 142,
                    width: 173,
                  )),
              SizedBox(
                height: 24,
              ),
              Text(
                "Your account has been set up!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff111827)),
              ),
              Text("We have customized feeds according to your\n preferences",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280)),),

              SizedBox(height: 230,),

              AppButton(text:
                      "Get Started",
                        onPress: () async {
                          navigateTo(HiView());
                        },

                      )
            ],
          ),
        ),
      ),
    );
  }
}
