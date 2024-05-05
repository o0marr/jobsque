import 'dart:async';
import 'package:dio/dio.dart';
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
  final formKey= GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();


  RegisterBloc() : super(RegisterStates()) {
    on<GetRegisterEvent>(_register);
  }
  Future<void> _register(GetRegisterEvent event,
      Emitter<RegisterStates> emit,) async {
    emit(GetRegisterLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/auth/auth/register?");
    final model =RegisterData.fromJson(response.data);
    emit(GetRegisterSuccessState(msg: "Success"));
  }
}
