import 'package:jobsque/features/auth/auth/check_email/bloc.dart';
import 'package:jobsque/features/auth/auth/create_new_password/bloc.dart';
import 'package:jobsque/features/auth/auth/job_title/bloc.dart';
import 'package:jobsque/features/auth/auth/login/bloc.dart';
import 'package:jobsque/features/auth/auth/password_changed/bloc.dart';
import 'package:jobsque/features/auth/auth/register/bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:jobsque/features/auth/auth/reset_password/bloc.dart';
import 'package:jobsque/features/auth/auth/slider/bloc.dart';
import 'package:jobsque/features/auth/my_account/profile/edit_profile/bloc.dart';
import 'package:jobsque/features/auth/my_account/profile/login_and_security/bloc.dart';
import 'package:jobsque/features/auth/my_account/profile/phone_number/bloc.dart';
import 'package:jobsque/main/auth/password_changed/view.dart';

void initGetIt(){
  final container = GetIt.instance;
  container.registerFactory(() =>  RegisterBloc());
  container.registerFactory(() =>  LoginBloc());
  container.registerFactory(() =>  JobBloc());
  container.registerFactory(() =>  ResetPasswordBloc());
  container.registerFactory(() =>  CreateNewPasswordBloc());
  container.registerFactory(() =>  PasswordChangedBloc());
  container.registerFactory(() =>  SliderBloc());
  container.registerFactory(() =>  EditProfileBloc());
  container.registerFactory(() =>  LoginAndSecurityBloc());
  container.registerFactory(() =>  PhoneNumberBloc());
  container.registerFactory(() =>  CheckEmailBloc());


}
