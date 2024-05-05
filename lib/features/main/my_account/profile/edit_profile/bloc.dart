import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class EditProfile2Bloc extends Bloc<EditProfile2Events, EditProfile2States> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  EditProfile2Bloc() : super(EditProfile2States()) {
    on<GetEditProfile2Event>(_getData);
  }


  Future<void> _getData(GetEditProfile2Event event,
      Emitter<EditProfile2States> emit,) async {
    emit(GetEditProfile2LoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/user/profile/edit?bio=tena&address=mohamed&mobile=tena&language=en&interested_work=data&offline_place=data&remote_place=data&experience=data&personal_detailed=data&education=education");
    final model =EditProfile2 .fromJson(response.data);
emit(GetEditProfile2SuccessState(msg: "Success"));
  }
}
