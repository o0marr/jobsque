import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/auth/auth/create_new_password/bloc.dart';
import 'package:jobsque/main/auth/check_email/view.dart';
import 'package:jobsque/main/auth/password_changed/view.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({Key? key}) : super(key: key);

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  final bloc = GetIt.I<CreateNewPasswordBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppImage("logo1.png"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
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
                    Column(
                      children: [
                        AppInput(
                          controller: bloc.passwordController,
                          label: "Password",
                          inputType: TextInputType.visiblePassword,
                          prefixIcon: "lock.png",
                        isPassword: true,

                        ),
                        Text("Password must be at least 8 characters"),
                      ],
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    AppInput(
                      controller: bloc.password2Controller,
                      label: "Password",
                      inputType: TextInputType.visiblePassword,
                      prefixIcon: "lock.png",
                      isPassword: true,

                    ),
                    Text("Both password must match"),

                    SizedBox(height: 130,),
                    BlocBuilder(
                        bloc: bloc,
                        builder: (context, state) {
                          if (state is GetCreateNewPasswordLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return AppButton(text:
                            "Reset password",
                              onPress: () async {
                                navigateTo(PasswordChangedView());
                              },

                            );
                          }
                        }
                    ),



                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
