import 'dart:async';

import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'events.dart';
part 'states.dart';
class LoginBloc extends Bloc<LoginEvents, LoginStates> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  LoginBloc() : super(LoginStates()) {
    on<LoginEvent>(_login);
  }
  Future<void> _login(
    LoginEvent event,
    Emitter<LoginStates> emit,
  ) async{

    if (formKey.currentState!.validate()) {
          emit(LoginLoadingState());
          await Future.delayed(Duration(seconds: 2));
          emit(LoginSuccessState(msg: "Login Success"));
          // navigateTo(HomePage(), KeepHistory: false);
        }
  }
}
