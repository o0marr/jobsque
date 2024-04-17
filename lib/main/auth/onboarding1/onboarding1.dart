import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/onboarding2/onboarding2.dart';
import 'package:shimmer/shimmer.dart';

import '../../../features/auth/auth/slider/bloc.dart';

class OnBoarding1View extends StatefulWidget {
  const OnBoarding1View({Key? key}) : super(key: key);

  @override
  State<OnBoarding1View> createState() => _OnBoarding1ViewState();
}

class _OnBoarding1ViewState extends State<OnBoarding1View> {
  int currentImage = 0;
  final bloc = GetIt.I<SliderBloc>()..add(GetSliderEvent());

  @override
  Widget build(BuildContext context) {
  return BlocBuilder(
  bloc: bloc,
  builder: (context,state) {
  if (state is GetSliderFailedState) {
  return Text(state.msg);
  } else if (state is GetSliderSuccessState) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Stack(
              children: [
                SizedBox(
                  height: 20,
                ),
                AppImage(
                  "Background.png",
                  height: 281,
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
                Column(
                  children: [
                    SizedBox(
                      height: 310,
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
                                "Find a job, and start\nbuilding your career\nfrom now on ",
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
                              "Explore over 25,924 available job roles and\nupgrade your operator now.",
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
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          CarouselSlider.builder(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onScrolled: (value) {},
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                currentImage = index;
                                setState(() {
                                  navigateTo(Onboarding2View());
                                });
                              },
                              autoPlayCurve: Curves.linear,
                            ),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                                AppImage(
                                  state.msg,
                                  width: double.infinity,
                                ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 49.5,
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding2View()));
                      },
                      child: Text("Next"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );


  }else {
  return _Loading();
  }
  }
  );
  }
}
class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        child: Container(
          height: double.infinity,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          color: Colors.grey.withOpacity(.6),
        ),
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.white,
      ),
    );
  }
}
