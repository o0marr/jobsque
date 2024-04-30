import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/design/app_button.dart';
import '../../../../../core/logic/helper_methods.dart';
import '../../help_center/view.dart';


class SendCodeView extends StatefulWidget {
  const SendCodeView({Key? key}) : super(key: key);

  @override
  State<SendCodeView> createState() => _SendCodeViewState();
}

class _SendCodeViewState extends State<SendCodeView> {
  String greeting="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1,milliseconds: 0), (timer) {
      setState(() {
        greeting="Resend code ${DateTime.now().second}";
      });
    });
  }
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
          Text("Enter the 6 digit code",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 12,),
            Text("Please confirm your account by entering the\n authorization code sen to ****-****-7234",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6B7280)),),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.only(left: 24,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 44,
                  width: 44,
                  child: TextFormField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1){},
                    decoration: const InputDecoration(hintText: "0"),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  ),
                  SizedBox(height: 44,
                    width: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(hintText: "0"),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(height: 44,
                    width: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(hintText: "0"),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(height: 44,
                    width: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(hintText: "0"),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(height: 44,
                    width: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(hintText: "0"),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(height: 44,
                    width: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(hintText: "0"),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text(greeting,style: TextStyle(fontSize: 15),),

              ],
            ),
            SizedBox(height: 300,),
        AppButton(text:
        "Verify",
          onPress: () async {
            navigateTo(HelpCenterView());
          },
        ),
        ],
        ),
      )),
    );
  }
}
