import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class CreateNewPasswordBloc extends Bloc<CreateNewPasswordEvents, CreateNewPasswordStates> {
  final formKey= GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();


  CreateNewPasswordBloc() : super(CreateNewPasswordStates()) {
    on<GetCreateNewPasswordEvent>(_getData);
  }


  Future<void> _getData(GetCreateNewPasswordEvent event,
      Emitter<CreateNewPasswordStates> emit,) async {
    emit(GetCreateNewPasswordLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetCreateNewPasswordSuccessState(msg: "Success"));
  }
}
