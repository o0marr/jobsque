import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/main/auth/create_password/view.dart';
import 'package:jobsque/main/auth/edit_profile/view.dart';
import 'package:jobsque/main/auth/job_title/job_title.dart';
import 'package:jobsque/main/auth/location/view.dart';
import 'package:jobsque/main/auth/login/login.dart';
import 'package:jobsque/main/auth/onboarding1/onboarding1.dart';
import 'package:jobsque/main/auth/password_changed/view.dart';
import 'package:jobsque/main/auth/register/register.dart';
import 'package:jobsque/main/auth/reset_password/reset_password.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';
import 'package:jobsque/main/main/apply_job/job_details/view.dart';
import 'package:jobsque/main/main/apply_job/view.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/search_not_found/view.dart';
import 'package:jobsque/main/main/home_screen/searches2/view%20.dart';
import 'package:jobsque/main/main/profile/complete_profile/view.dart';
import 'package:jobsque/main/main/profile/language/view.dart';
import 'package:jobsque/main/main/profile/view.dart';

import 'core/logic/cache_helper.dart';
import 'core/logic/helper_methods.dart';
import 'features/get_it.dart';
import 'firebase_options.dart';
import 'main/auth/splach/Splach.dart';
import 'main/main/apply_job/apply/view.dart';
import 'main/main/profile/Phone_number/view.dart';
import 'main/main/profile/edit_profile/view.dart';
import 'main/main/profile/help_center/view.dart';
import 'main/main/profile/login_and_security/view.dart';
import 'main/main/profile/privacy_policy/view.dart';
import 'main/main/profile/terms_conditions/view.dart';
import 'main/main/profile/two_step_verification/send_code/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CachHelper.init();
  initGetIt();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        startLocale: Locale('en') ,
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child:SplachView(),
      designSize:  Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          home: child,
          title: 'msaz',
          navigatorKey: navKey,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Sfpro",
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0300ae)),
            useMaterial3: true,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              centerTitle: true,
              surfaceTintColor: Colors.white,
              titleTextStyle: TextStyle(fontSize: 20,fontFamily: "Tajawal",fontWeight: FontWeight.w700,color: Color(
                  0xff1101b9)),


            ),
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ))),

            filledButtonTheme: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                    fixedSize: Size.fromHeight(60.h),
                    textStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ))),
            inputDecorationTheme: InputDecorationTheme(
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(
                  color: Color(0xffF3F3F3),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
