import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class LoginAndSecurityBloc
    extends Bloc<LoginAndSecurityEvents, LoginAndSecurityStates> {
  final emailaddress = TextEditingController();

  LoginAndSecurityBloc() : super(LoginAndSecurityStates()) {
    on<GetLoginAndSecurityEvent>(_LoginAndSecurity);
  }


  Future<void> _LoginAndSecurity(GetLoginAndSecurityEvent event,
      Emitter<LoginAndSecurityStates> emit,) async {
    emit(GetLoginAndSecurityLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetLoginAndSecuritySuccessState(msg: "Success"));
  }
}
