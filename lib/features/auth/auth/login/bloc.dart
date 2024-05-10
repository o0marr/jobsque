import 'dart:async';

import 'package:dio/dio.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/dio_helper.dart';
import 'model.dart';
part 'events.dart';
part 'states.dart';
class LoginBloc extends Bloc<LoginEvents, GetLoginStates> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  LoginBloc() : super(GetLoginStates()) {
    on<GetLoginEvent>(_getData);
  }
  Future<void> _getData(GetLoginEvent event,
      Emitter<GetLoginStates> emit,) async {
    if (formKey.currentState!.validate()) {
      emit(GetLoginLoadingState());
      final response = await DioHelper.send("auth/login", data: {
        "email": emailController.text,
        "password": passwordController.text,
      });
      if(response.isSuccess){
        emit(GetLoginSuccessState(msg: response.msg??""));

      }else{
        emit(GetLoginFailedState(msg: response.msg??""));
      }
    }
  }
}
