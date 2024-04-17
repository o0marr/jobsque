import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class PhoneNumberBloc extends Bloc<PhoneNumberEvents, PhoneNumberStates> {
  final phonenumber = TextEditingController();

  PhoneNumberBloc() : super(PhoneNumberStates()) {
    on<GetPhoneNumberEvent>(_PhoneNumber);
  }


  Future<void> _PhoneNumber(GetPhoneNumberEvent event,
      Emitter<PhoneNumberStates> emit,) async {
    emit(GetPhoneNumberLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetPhoneNumberSuccessState(msg: "Success"));
  }
}
