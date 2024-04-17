import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/auth/my_account/profile/login_and_security/bloc.dart';

import '../../../../core/design/app_button.dart';
import '../../../auth/create_password/view.dart';

class LoginAndSecurityPage extends StatefulWidget {
  const LoginAndSecurityPage({Key? key}) : super(key: key);

  @override
  State<LoginAndSecurityPage> createState() => _LoginAndSecurityPageState();
}

class _LoginAndSecurityPageState extends State<LoginAndSecurityPage> {
  final bloc = GetIt.I<LoginAndSecurityBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email address",style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(children: [
            Text(
              "Main e-mail address",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            AppInput(
              controller: bloc.emailaddress,
              label: "Username",
              inputType: TextInputType.text,
              prefixIcon: "sms.png",
            ),
            SizedBox(height: 400,),
            BlocBuilder(
                bloc: bloc,
                builder: (context, state) {
                  if (state is GetLoginAndSecurityLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return AppButton(text:
                    "Save",
                      onPress: () async {
                        navigateTo(CreatePasswordView());
                      },

                    );
                  }
                }
            ),
          ]),
        ),
      ),
    );
  }
}
