import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/auth/auth/reset_password/bloc.dart';
import 'package:jobsque/main/auth/check_email/view.dart';
import 'package:jobsque/main/auth/password_changed/view.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_image.dart';
import '../job_title/job_title.dart';


class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final bloc = GetIt.I<ResetPasswordBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppImage("logo1.png"),

        leading: IconButton(  onPressed: () {

        },icon: Icon(Icons.arrow_back) ,),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(

            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Reset Password",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff1C192D)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppInput(
                      controller: bloc.emailController,
                      label: "Enter your email....",
                      inputType: TextInputType.emailAddress,
                      prefixIcon: "sms.png",
                    ),
                    SizedBox(
                      height: 280.h,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            "You remember your password",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    ),
                    BlocBuilder(
                        bloc: bloc,
                        builder: (context, state) {
                          if (state is GetResetPasswordLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return AppButton(text:
                            "Request password reset",
                              onPress: ()  {
                                navigateTo(CheckEmailView());
                              },

                            );
                          }
                        }
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
