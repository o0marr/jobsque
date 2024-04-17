import 'dart:async';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class CheckEmailBloc extends Bloc<CheckEmailEvents, CheckEmailStates> {
  CheckEmailBloc() : super(CheckEmailStates()) {
    on<GetCheckEmailEvent>(_CheckEmail);
  }


  Future<void> _CheckEmail(GetCheckEmailEvent event,
      Emitter<CheckEmailStates> emit,) async {
    emit(GetCheckEmailLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetCheckEmailSuccessState(msg: "Success"));
  }
}
