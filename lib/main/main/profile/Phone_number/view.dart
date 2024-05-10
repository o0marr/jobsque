import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/toggle_button.dart';
import 'package:jobsque/features/auth/auth/phone_number/bloc.dart';
import 'package:jobsque/main/main/profile/change_password/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/design/app_input.dart';
import '../../../../core/logic/helper_methods.dart';

class PhonenumberView extends StatefulWidget {
  const PhonenumberView({Key? key}) : super(key: key);

  @override
  State<PhonenumberView> createState() => _PhonenumberViewState();
}

class _PhonenumberViewState extends State<PhonenumberView> {
  final bloc = GetIt.I<PhoneNumberBloc>()..add(GetPhoneNumberEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phone number",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Main phone number",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              AppInput(
                label: "0100-666-7234",
                inputType: TextInputType.number,
                isPhone: true,
                prefixIcon: "FLAG.png",
                controller: bloc.phoneController,

              ),
              Row(
                children: [
                  Text(
                    "Use the phone number to reset your password",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff6B7280)),
                  ),
                  Spacer(),
                  ToggleButton(),
                ],
              ),
              SizedBox(
                height: 350,
              ),
              AppButton(
                text: "Save",
                onPress: () async {
                  navigateTo(ChangePasswordView());
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
