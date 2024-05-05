import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class OtpBloc extends Bloc<OtpEvents, OtpStates> {
  OtpBloc() : super(OtpStates()) {
    on<GetOtpEvent>(_getData);
  }


  Future<void> _getData(GetOtpEvent event,
      Emitter<OtpStates> emit,) async {
    emit(GetOtpLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/auth/auth/otp?");
    final model =Otp.fromJson(response.data);
    emit(GetOtpSuccessState(msg: "Success"));
  }
}
