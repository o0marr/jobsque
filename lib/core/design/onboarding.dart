import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/register/register.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen(
      {super.key,
      required this.imageUrl,
      required this.heading,
      required this.paragraph,
      required this.headingText,
      required this.headingOne});

  final String imageUrl;
  final String heading;
  final String headingOne;
  final String paragraph;
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(imageUrl),
          PositionedDirectional(
            top: 30.h,
            child: Row(
              children: [
                SizedBox(
                  width: 24.w,
                ),
                Image.asset("assets/images/logo1.png", width: 81, height: 19),
                SizedBox(
                  width: 216.w,
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(RegisterView());
                  },
                    child: Text(
                  "Skip",
                ))
              ],
            ),
          ),
          PositionedDirectional(
            top: 448.h,
            child: Container(
              width: 327.w,
              height: 180.h,
              margin: const EdgeInsets.only(left: 24),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "sfpro",
                      ),
                      children: [
                    TextSpan(
                      text: heading,
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 32.sp,
                          fontFamily: "sfpro",
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                        text: headingText,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "sfpro")),
                    TextSpan(
                      text: headingOne,
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 32.sp,
                          fontFamily: "sfpro",
                          fontWeight: FontWeight.w500),
                    ),
                  ])),
            ),
          ),
          Positioned(
            left: 24.w,
            top: 585.h,
            child: Text(
              paragraph,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
