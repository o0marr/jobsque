import 'dart:async';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvents, ForgetPasswordStates> {
  ForgetPasswordBloc() : super(ForgetPasswordStates()) {
    on<ForgetPasswordEvent>(_ForgetPassword);
  }


  Future<void> _ForgetPassword(ForgetPasswordEvent event,
      Emitter<ForgetPasswordStates> emit,) async {
    emit(ForgetPasswordLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(ForgetPasswordSuccessState(msg: "Success"));
  }
}
