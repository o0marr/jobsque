import 'package:jobsque/core/design/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatefulWidget {
  final String label, prefixIcon;

  final TextInputType? inputType;
  final bool isPhone;
  final bool isCountry;
  final bool isName;
  final bool isWebsite;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppInput(
      {Key? key,
      required this.label,
      this.isPhone = false,
      this.isPassword = false,
      this.isWebsite = false,

        required this.prefixIcon,
      this.inputType,  this.controller, this.validator,  this.isCountry=false,  this.isName=false})
      : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IntrinsicHeight(
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          keyboardType: widget.inputType,
          obscureText: widget.isPassword &&isHidden ,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              labelText: widget.label,
              icon: widget.isPhone
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(color: Color(0xffF3F3F3))),
                      padding: EdgeInsets.symmetric(horizontal: 18.5.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(
                            "FLAG.png",
                            height: 20.h,
                            width: 32.w,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),

                        ],
                      ),
                    )
                  : null,
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 17.4.w, top: 19.h, bottom: 19.h, end: 9.3.w),
                child: AppImage(
                  widget.prefixIcon,
                  height: 22.h,
                  width: 22.w,
                ),
              ),
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      child: Icon(
                          isHidden? Icons.visibility_off:Icons.visibility),
                      onTap: () {
                        isHidden=!isHidden;
                        setState(() {

                        });
                      },
                    )
                  : null),
        ),
      ),
      SizedBox(
        height: 16.h,
      ),
    ]);
  }
}
