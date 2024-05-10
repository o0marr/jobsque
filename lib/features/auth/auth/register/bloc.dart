import 'dart:async';
import 'package:dio/dio.dart';
import 'package:jobsque/core/logic/dio_helper.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/auth/auth/register/model.dart';

part 'events.dart';

part 'states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  RegisterBloc() : super(RegisterStates()) {
    on<GetRegisterEvent>(_register);
  }

  Future<void> _register(
    GetRegisterEvent event,
    Emitter<RegisterStates> emit,
  ) async {
    if (formKey.currentState!.validate()) {
      emit(GetRegisterLoadingState());
      final response = await DioHelper.send("auth/register", data: {
        "name": nameController.text,
        "email": emailController.text,
        "password": passwordController.text,
      });
      if(response.isSuccess){
        emit(GetRegisterSuccessState(msg: response.msg??""));

      }else{
        emit(GetRegisterFailedState(msg: response.msg??""));
      }
    }
  }
}
