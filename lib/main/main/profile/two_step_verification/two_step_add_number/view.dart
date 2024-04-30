import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/main/main/profile/two_step_verification/view.dart';

import '../../../../../core/design/app_button.dart';
import '../../../../../core/design/app_input.dart';
import '../../../../../core/logic/helper_methods.dart';
import '../../../../../features/auth/my_account/profile/phone_number/bloc.dart';
import '../send_code/view.dart';


class TwoStepAddNumberView extends StatefulWidget {
  const TwoStepAddNumberView({Key? key}) : super(key: key);

  @override
  State<TwoStepAddNumberView> createState() => _TwoStepAddNumberViewState();
}

class _TwoStepAddNumberViewState extends State<TwoStepAddNumberView> {
  final bloc = GetIt.I<PhoneNumberBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Two-step verification",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add phone number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            SizedBox(height: 4,),
            Text("We will send a verification code to this number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff6B7280)),),
            SizedBox(height: 16,),
            AppInput(
              controller: bloc.phonenumber,
              label: "0100-666-7234",
              inputType: TextInputType.text,
              prefixIcon: "FLAG.png",

            ),
            SizedBox(height: 20,),
            Text("Enter your password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            SizedBox(height: 16,),
            AppInput(label: ".....Enter your password", prefixIcon: "lock.png",isPassword: true),
            SizedBox(height: 220,),
            AppButton(text:
            "Send Code",
              onPress: () async {
                navigateTo(SendCodeView());
              },

            )


          ],
        ),)),
    );
  }
}
