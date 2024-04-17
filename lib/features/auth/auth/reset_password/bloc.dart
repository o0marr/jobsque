import 'dart:async';

import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'events.dart';
part 'states.dart';
class ResetPasswordBloc extends Bloc<ResetPasswordEvents, ResetPasswordStates> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  ResetPasswordBloc() : super(ResetPasswordStates()) {
    on<GetResetPasswordEvent>(_password);
  }


  Future<void> _password(GetResetPasswordEvent event,
      Emitter<ResetPasswordStates> emit,) async {
    emit(GetResetPasswordLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetResetPasswordSuccessState(msg: "Success"));
  }
}
