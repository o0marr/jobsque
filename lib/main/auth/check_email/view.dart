import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/auth/auth/check_email/bloc.dart';
import 'package:jobsque/main/auth/create_password/view.dart';

import '../../../core/design/app_button.dart';

class CheckEmailView extends StatefulWidget {
  const CheckEmailView({Key? key}) : super(key: key);

  @override
  State<CheckEmailView> createState() => _CheckEmailViewState();
}

class _CheckEmailViewState extends State<CheckEmailView> {
  final bloc = GetIt.I<CheckEmailBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 80, top: 204),
          child: Column(
            children: [
              Container(
                  child: AppImage(
                "Email Ilustration.png",
                height: 142,
                width: 173,
              )),
              SizedBox(
                height: 24,
              ),
              Text(
                "Check your Email",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff111827)),
              ),
              Text("We have sent a reset password to",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280)),),
              Text("your email address",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)),),
              BlocBuilder(
                  bloc: bloc,
                  builder: (context, state) {
                    if (state is GetCheckEmailLoadingState) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return AppButton(text:
                      "Request password reset",
                        onPress: () async {
                          navigateTo(CreatePasswordView());
                        },

                      );
                    }
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
