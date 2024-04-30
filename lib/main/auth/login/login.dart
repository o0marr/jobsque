import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/core/logic/input_validator.dart';
import 'package:jobsque/features/auth/auth/login/bloc.dart';
import 'package:jobsque/main/auth/job_title/job_title.dart';
import 'package:jobsque/main/auth/reset_password/reset_password.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final bloc = GetIt.I<LoginBloc>();
  bool isChecked=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppImage("logo1.png"),


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
                      "Login",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Please login to find your dream job",
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
                      prefixIcon: "profile.png",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),

                    Container(
                      child: Column(
                        children: [
                          AppInput(
                            controller: bloc.passwordController,
                            label: "password",
                            validator: InputValidator.password,
                            isPassword: true,
                            prefixIcon: "lock.png",
                          ),

                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Checkbox(value:isChecked , onChanged: (value) {
                          print(value);
                          isChecked=!isChecked;
                          setState(() {

                          });
                        },),
                        SizedBox(
                          width: 0,
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        TextButton(onPressed: () {
                          navigateTo(ResetPasswordView());
                        }, child: Text("Forget password?",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w400),))
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    BlocBuilder(
                        bloc: bloc,
                        builder: (context, state) {
                          if (state is LoginLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return AppButton(text:
                            "Login",
                              onPress: () async {
                                navigateTo(HiView());
                              },

                            );
                          }
                        }
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            width: 90,
                            height: 3,
                            color: Color(0xffD1D5DB),
                          ),
                          Text(
                            "Or Login With Account",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          Container(
                            width: 92,
                            height: 3,
                            color: Color(0xffD1D5DB),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 40),
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
                          SizedBox(width: 19,),
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
