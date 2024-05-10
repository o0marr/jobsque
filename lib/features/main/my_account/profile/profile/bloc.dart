import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/main/my_account/profile/profile/model.dart';

import '../../../../../core/logic/dio_helper.dart';


part 'events.dart';

part 'states.dart';

class ProfileBloc extends Bloc<ProfileDataEvents, ProfileDataStates> {
  final formKey = GlobalKey<FormState>();

  ProfileBloc() : super(ProfileDataStates()) {
    on<GetProfileDataEvent>(_getData);
  }


  Future<void> _getData(GetProfileDataEvent event,
      Emitter<ProfileDataStates> emit,)async {
    if (formKey.currentState!.validate()) {
      emit(GetProfileDataLoadingState());
      final response = await DioHelper.send("auth/profile", data: {

      });
      if(response.isSuccess){
        emit(GetProfileDataSuccessState(msg: response.msg??""));

      }else{
        emit(GetProfileDataFailedState(msg: response.msg??""));
      }
    }
  }
}
