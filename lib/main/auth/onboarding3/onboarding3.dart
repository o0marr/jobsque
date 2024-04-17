import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/main/auth/register/register.dart';

import '../../../core/design/app_image.dart';


class Onboarding3View extends StatelessWidget {
  const Onboarding3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: 20,
              ),
              AppImage(
                "personi.png",
                height: 450,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 6.5,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        children: [
                          AppImage(
                            "logo1.png",
                            width: 81.w,
                            height: 19.h,
                          ),
                          SizedBox(
                            width: 232,
                          ),
                          TextButton(onPressed: () {}, child: Text("Skip")),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 450,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Get the best choice for\nthe job you've always\ndreamed of ",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "The better the skills you have, the greater\nthe good job opportunities for you.",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff6B7280)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      margin: EdgeInsets.only(bottom: 7.h),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(.8),
                          borderRadius: BorderRadius.circular(9.r)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsetsDirectional.only(
                              end: 3.w,
                            ),
                            child: CircleAvatar(
                              radius: 3.5.r,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterView()));

                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
