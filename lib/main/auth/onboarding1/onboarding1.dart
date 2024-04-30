import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/register/register.dart';

import '../../../core/design/onboarding.dart';
class OnBoarding1View extends StatefulWidget {
  const OnBoarding1View({super.key});

  @override
  State<OnBoarding1View> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding1View> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: [
                OnBoardingScreen(
                  imageUrl: 'assets/images/Background.png',
                  heading: 'Find a job, and ',
                  headingText: 'start building ',
                  paragraph:
                  'Explore over 25,924 available job roles and \n upgrade your operator now.',
                  headingOne: 'your career from now on',
                ),
                OnBoardingScreen(
                  heading: 'Hundreds of jobs are ',
                  headingText: 'join together',
                  imageUrl: 'assets/images/persons.png',
                  paragraph:
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
                  headingOne: 'waiting for you to',
                ),
                OnBoardingScreen(
                  heading: 'with your friends',
                  headingText: 'Connect ',
                  imageUrl: 'assets/images/personi.png',
                  paragraph:
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
                  headingOne: '',
                ),
              ],
            ),
            Positioned(
              top: 664.h,
              left: 174.w,
              child: Container(
                margin: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    3,
                        (index) =>
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 2.w),
                          child: CircleAvatar(
                            radius: 4.w,
                            backgroundColor: _currentPage == index
                                ? Color(0xffADC8FF)
                                : Theme
                                .of(context)
                                .primaryColor,
                          ),
                        ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 708.h,
              child: SizedBox(
                width: 327.w,
                child: FilledButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(microseconds: 500),
                          curve: Curves.ease);
                      if(_currentPage==2){
                        navigateTo(RegisterView());
                      };

                    },
                    child: const Text("Next")),
              ),
            ),
          ],
        ));
  }
}
