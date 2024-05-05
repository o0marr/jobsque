import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/main/home_screen/filter/job_filter/model.dart';

part 'events.dart';

part 'states.dart';

class JobFilterBloc extends Bloc<JobFilterEvents, JobFilterStates> {
  JobFilterBloc() : super(JobFilterStates()) {
    on<GetJobFilterEvent>(_getData);
  }


  Future<void> _getData(GetJobFilterEvent event,
      Emitter<JobFilterStates> emit,) async {
    emit(GetJobFilterLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/jobs/filter?");
    final model =JobFilterData.fromJson(response.data);
    emit(GetJobFilterSuccessState(msg: "Success"));
  }
}
