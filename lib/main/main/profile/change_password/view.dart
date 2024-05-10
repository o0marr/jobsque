import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/features/auth/auth/change_password/bloc.dart';
import 'package:jobsque/main/main/profile/two_step_verification/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';
import '../Phone_number/view.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final bloc = GetIt.I<ChangePasswordBloc>()..add(GetChangePasswordEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change password",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
            child: SingleChildScrollView(
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
              AppInput(
                  label: ".....Enter your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password must be Entered";
                    } else if (value.length < 7) {
                      return "Password must be at least 8 characters";
                    } else {
                      return null;
                    }
                  },
                  prefixIcon: "lock.png",
                  controller: bloc.passwordController,
                  isPassword: true),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter your new password",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              AppInput(
                  label: ".....Enter your password",
                  prefixIcon: "lock.png",
                  controller: bloc.passwordController2,

                  validator: (value2) {
                    if (value2!.isEmpty) {
                      return "Password must be Entered";
                    } else if (value2.length < 7) {
                      return "Password must be at least 8 characters";
                    }  else {
                      return null;
                    }
                  },
                  isPassword: true),
              SizedBox(
                height: 20,
              ),
              Text(
                "Confirm your new password",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              AppInput(
                  label: ".....Enter your password",
                  prefixIcon: "lock.png",
                  controller: bloc.passwordController3,

                  validator: (value3) {
                    if (value3!.isEmpty) {
                      return "Password must be Entered";
                    } else if (value3.length < 7) {
                      return "Password must be at least 8 characters";
                    } else {
                      return null;
                    }
                  },
                  isPassword: true),
              SizedBox(
                height: 90,
              ),
              AppButton(
                  text: "Login",
                  onPress: () async {
                    navigateTo(TwoStepVerificationView());
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
