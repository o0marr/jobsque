import 'dart:async';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'events.dart';
part 'states.dart';
class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  final formKey= GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();


  RegisterBloc() : super(RegisterStates()) {
    on<RegisterEvent>(_register);
  }
  Future<void> _register(
      RegisterEvent event,
      Emitter<RegisterStates> emit,
      ) async{

    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState());
      await Future.delayed(Duration(seconds: 2));
      emit(RegisterSuccessState(msg: "Login Success"));
      // navigateTo(JobTitleView(), KeepHistory: false);
    }
  }
}
