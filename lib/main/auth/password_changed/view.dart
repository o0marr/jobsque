import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';

import '../../../core/design/app_button.dart';
import '../../../core/logic/helper_methods.dart';
import '../create_password/view.dart';

class PasswordChangedView extends StatefulWidget {
  const PasswordChangedView({Key? key}) : super(key: key);

  @override
  State<PasswordChangedView> createState() => _PasswordChangedViewState();
}

class _PasswordChangedViewState extends State<PasswordChangedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, top: 204),
          child: Column(
            children: [
              Container(
                  child: AppImage(
                "Password^^.png",
                height: 142,
                width: 173,
              )),
              SizedBox(
                height: 24,
              ),
              Text(
                "Password changed\n  "
                "  successfully!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff111827)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your password has been changed successfully,\nwe will let you know if there are more problems\nwith your account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280)),
              ),
              SizedBox(
                height: 20,
              ),
              AppButton(
                text: "Open email app",
                onPress: () async {
                  navigateTo(CreatePasswordView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
