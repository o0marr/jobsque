import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';
part 'events.dart';
part 'states.dart';
class LoginBloc extends Bloc<LoginEvents, LoginStates> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  LoginBloc() : super(LoginStates()) {
    on<GetLoginEvent>(_getData);
  }
  Future<void> _getData(GetLoginEvent event,
      Emitter<LoginStates> emit,) async {
    emit(LoginLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/auth/auth/login?");
    final model =Login.fromJson(response.data);
    emit(LoginSuccessState(msg: "Success"));
  }
}
