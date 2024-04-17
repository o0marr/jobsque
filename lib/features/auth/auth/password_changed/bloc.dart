import 'dart:async';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class PasswordChangedBloc
    extends Bloc<PasswordChangedEvents, PasswordChangedStates> {
  PasswordChangedBloc() : super(PasswordChangedStates()) {
    on<GetPasswordChangedEvent>(_password);
  }


  Future<void> _password(GetPasswordChangedEvent event,
      Emitter<PasswordChangedStates> emit,) async {
    emit(GetPasswordChangedLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetPasswordChangedSuccessState(msg: "Success"));
  }
}
