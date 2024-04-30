import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/auth/auth/job_title/bloc.dart';
import 'package:jobsque/main/auth/location/view.dart';
import 'package:jobsque/main/auth/login/login.dart';
import 'package:selectable_container/selectable_container.dart';

import '../../../core/design/app_button.dart';

class JobTitleView extends StatefulWidget {
  const JobTitleView({Key? key}) : super(key: key);

  @override
  State<JobTitleView> createState() => _JobTitleViewState();
}

class _JobTitleViewState extends State<JobTitleView> {
  bool checked = false;
  bool checked2 = false;
  bool checked3 = false;
  bool checked4 = false;
  bool checked5 = false;
  bool checked6 = false;

  bool _select = false;

  final bloc = GetIt.I<JobBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "What type of work are you interested in?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Tell us what you’re interested in so we can\ncustomise the app for your needs.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 36),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked = !checked;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "bezier.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "UI/UX Designer",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked2 = !checked2;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked2
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "Ilustrator Category.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Ilustrator Designer",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked3 = !checked3;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked3
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "Developer Category.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Developer",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked4 = !checked4;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked4
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "Management Category.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Management",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked5 = !checked5;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked5
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "Information technology category.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Information\n Technology",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    checked6 = !checked6;
                                  });
                                },
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: checked6
                                            ? Color(0xff84A9FF)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        AppImage(
                                          "Research5.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Research and\n Analytics",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 66,
                    ),
                    BlocBuilder(
                        bloc: bloc,
                        builder: (context, state) {
                          if (state is GetJobLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return AppButton(
                              text: "Next",
                              onPress: () async {
                                navigateTo(LocationView());
                              },
                            );
                          }
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
