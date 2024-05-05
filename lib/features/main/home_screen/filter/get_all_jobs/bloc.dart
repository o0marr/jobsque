import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class GetAllJobsBloc extends Bloc<GetAllJobsEvents, GetAllJobsStates> {
  GetAllJobsBloc() : super(GetAllJobsStates()) {
    on<GetGetAllJobsEvent>(_getData);
  }

  Future<void> _getData(GetGetAllJobsEvent event,
      Emitter<GetAllJobsStates> emit,) async {
    emit(GetGetAllJobsLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/jobs");
    final model =GetAllJobsData.fromJson(response.data);
    print(model.list.length);
    emit(GetGetAllJobsSuccessState(msg: "Success",list: model.list));
  }
}
