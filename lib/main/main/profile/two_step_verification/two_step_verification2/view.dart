import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/main/main/profile/two_step_verification/two_step_add_number/view.dart';

import '../../../../../core/design/app_button.dart';
import '../../../../../core/design/toggle_button.dart';
import '../../../../../core/logic/helper_methods.dart';

class TwoStepVerification2View extends StatefulWidget {
  const TwoStepVerification2View({Key? key}) : super(key: key);

  @override
  State<TwoStepVerification2View> createState() =>
      _TwoStepVerification2ViewState();
}

class _TwoStepVerification2ViewState extends State<TwoStepVerification2View> {
  final List<String> items = [
    'Telephone number (SMS)',
    'Telephone number (CALL)',
    'WhatsApp',
  ];
  String? selectedValue;
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
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, top: 36, right: 24),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 327,
                height: 66,
                child: Row(
                  children: [
                    Text(
                      "Secure your account with\n two-step verification",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6B7280)),
                    ),
                    Spacer(),
                    ToggleButton()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text("Select a verification method",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                width: 327,
                height: 56,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Telephone number (SMS)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Color(0xffffffff),
                      ),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Color(0xffffffff),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xffffffff),
                      ),
                      offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility:
                        MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text("Note : Turning this feature will sign you out anywhere you’re\n currently signed in. We will then require you to enter a\n verification code the first time you sign with a\n new device or Joby mobile application.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),


            SizedBox(
              height: 210,
            ),
            AppButton(
              text: "Next",
              onPress: () async {
                navigateTo(TwoStepAddNumberView());
              },
            )
          ],
        ),
      )),
    );
  }
}
