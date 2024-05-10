import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/job_title/job_title.dart';
import 'package:jobsque/main/auth/login/login.dart';

import '../../../core/design/app_image.dart';
import '../../../core/design/app_input.dart';
import '../../../core/logic/input_validator.dart';
import '../../../features/auth/auth/register/bloc.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final bloc = GetIt.I<RegisterBloc>()..add(GetRegisterEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppImage("logo1.png"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Create Account",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Please create an account to find your dream job",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff1C192D)),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    AppInput(
                      controller: bloc.nameController,
                      label: "Username",
                      inputType: TextInputType.text,
                      isName: true,
                      prefixIcon: "profile.png",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    AppInput(
                        label: "Email",
                        controller: bloc.emailController,
                        inputType: TextInputType.text,
                        prefixIcon: "sms.png"),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      child: Column(
                        children: [
                          AppInput(
                            controller: bloc.passwordController,
                            label: "password",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password must be Entered";
                              } else if (value.length < 7) {
                                return "Password must be at least 8 characters";
                              } else {
                                return null;
                              }
                            },
                            isPassword: true,
                            prefixIcon: "lock.png",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {
                                navigateTo(LoginView());
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    ),
                    BlocConsumer(
                        listener: (context, state) {
                          if(state is GetRegisterSuccessState){
                            navigateTo(JobTitleView());
                          }
                        },
                        bloc: bloc,
                        builder: (context, state) => AppButton(
                            text: "Create account",
                            onPress: () async {
                              bloc.add(GetRegisterEvent());
                            })),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 3,
                            color: Color(0xffD1D5DB),
                          ),
                          Text(
                            "Or Sign up With Account",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          Container(
                            width: 112,
                            height: 3,
                            color: Color(0xffD1D5DB),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70, right: 40),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                child: Row(children: [
                                  AppImage(
                                    "google.png",
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Google",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                              )),
                          SizedBox(
                            width: 19,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Link("https://www.facebook.com/");
                              },
                              child: Container(
                                child: Row(children: [
                                  AppImage(
                                    "Facebook.png",
                                    height: 16,
                                    width: 16,
                                  ),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                              ))
                        ],
                      ),
                    )
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
