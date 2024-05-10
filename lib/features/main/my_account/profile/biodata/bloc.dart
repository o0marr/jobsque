import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/logic/dio_helper.dart';

part 'events.dart';

part 'states.dart';

class BioDataBloc extends Bloc<BioDataEvents, BioDataStates> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  BioDataBloc() : super(BioDataStates()) {
    on<GetBioDataEvent>(_getData);
  }


  Future<void> _getData(GetBioDataEvent event,
      Emitter<BioDataStates> emit,)async {
    if (formKey.currentState!.validate()) {
      emit(GetBioDataLoadingState());
      final response = await DioHelper.send("auth/login", data: {
        "email": emailController.text,
        "Name": nameController.text,
        "phone": phoneController.text
      });
      if(response.isSuccess){
        emit(GetBioDataSuccessState(msg: response.msg??""));

      }else{
        emit(GetBioDataFailedState(msg: response.msg??""));
      }
    }
  }
}
