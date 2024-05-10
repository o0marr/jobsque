import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/dio_helper.dart';

part 'events.dart';

part 'states.dart';

class PhoneNumberBloc extends Bloc<PhoneNumberEvents, PhoneNumberStates> {
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  PhoneNumberBloc() : super(PhoneNumberStates()) {
    on<GetPhoneNumberEvent>(_getData);
  }


  Future<void> _getData(GetPhoneNumberEvent event,
      Emitter<PhoneNumberStates> emit,) async {
    if (formKey.currentState!.validate()) {
      emit(GetPhoneNumberLoadingState());
      final response = await DioHelper.send("auth/login", data: {
        "password": phoneController.text,
      });
      if(response.isSuccess){
        emit(GetPhoneNumberSuccessState(msg: response.msg??""));

      }else{
        emit(GetPhoneNumberFailedState(msg: response.msg??""));
      }
    }
  }
}
