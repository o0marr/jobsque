import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class ExperienceBloc extends Bloc<ExperienceEvents, ExperienceStates> {
  ExperienceBloc() : super(ExperienceStates()) {
    on<GetExperienceEvent>(_getData);
  }


  Future<void> _getData(GetExperienceEvent event,
      Emitter<ExperienceStates> emit,) async {
    emit(GetExperienceLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/experince?postion=flutter&type_work=part&comp_name=amit&location=nsnvhdvdh&start=2?");
    final model =Experience.fromJson(response.data);
    emit(GetExperienceSuccessState(msg: "Success"));
  }
}
