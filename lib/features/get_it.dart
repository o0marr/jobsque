
import 'package:jobsque/features/auth/auth/otp/bloc.dart';
import 'package:jobsque/features/auth/auth/register/bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:jobsque/features/main/home_screen/filter/get_all_jobs/bloc.dart';
import 'package:jobsque/features/main/home_screen/filter/job_filter/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/add_portfolio/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/delete_portfolio/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/experience/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/get_portfolio/bloc.dart';

import 'package:jobsque/features/main/my_account/profile/login_and_security/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/notification/bloc.dart';
import 'package:jobsque/main/auth/edit_profile/view.dart';
import 'package:jobsque/main/auth/password_changed/view.dart';

import 'auth/auth/edit_profile/bloc.dart';
import 'auth/auth/login/bloc.dart';
import 'main/my_account/profile/edit_profile/bloc.dart';

void initGetIt(){
  final container = GetIt.instance;
  container.registerFactory(() =>  RegisterBloc());
  container.registerFactory(() =>  LoginBloc());
  container.registerFactory(() =>  EditProfileBloc());
  container.registerFactory(() =>  LoginAndSecurityBloc());
  container.registerFactory(() =>  EditProfile2Bloc());
  container.registerFactory(() =>  ExperienceBloc());
  container.registerFactory(() =>  NotificationBloc());
  container.registerFactory(() =>  GetPortfolioBloc());
  container.registerFactory(() =>  DeletePortfolioBloc());
  container.registerFactory(() =>  GetAllJobsBloc());
  container.registerFactory(() =>  AddPortfolioBloc());
  container.registerFactory(() =>  JobFilterBloc());
  container.registerFactory(() =>  OtpBloc());


}
