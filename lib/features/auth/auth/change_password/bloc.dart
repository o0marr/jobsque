import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/core/logic/helper_methods.dart';

import '../../../../core/logic/dio_helper.dart';

part 'events.dart';

part 'states.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvents, ChangePasswordStates> {
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final passwordController3 = TextEditingController();
  final formKey = GlobalKey<FormState>();

  ChangePasswordBloc() : super(ChangePasswordStates()) {
    on<GetChangePasswordEvent>(_getData);
  }


  Future<void> _getData(GetChangePasswordEvent event,
      Emitter<ChangePasswordStates> emit,)  async {
    if (formKey.currentState!.validate()) {
      emit(GetChangePasswordLoadingState());
      final response = await DioHelper.send("auth/login", data: {
        "password": passwordController.text,
      });
      if(response.isSuccess){
        emit(GetChangePasswordSuccessState(msg: response.msg??""));

      }else{
        emit(GetChangePasswordFailedState(msg: response.msg??""));
      }
    }
  }
}
