import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/main/auth/onboarding1/onboarding1.dart';

import '../../../core/logic/cache_helper.dart';
import '../../../core/logic/helper_methods.dart';

class SplachView extends StatefulWidget {
  const SplachView({Key? key}) : super(key: key);

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      if(CachHelper.isAuth){
        navigateTo(OnBoarding1View(),KeepHistory: false);
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppImage(
            "Blur.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Center(
           child:PositionedDirectional(
             child: SpinPerfect(
               duration: Duration(seconds: 2),
               child: AppImage(
                 "logo1.png",
                 height: 50,
                 width: 150,
                 fit: BoxFit.fill,
               ),
             ),
           ),
          )
             ],
      ),
    );
  }
}
