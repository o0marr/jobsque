import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class JobBloc extends Bloc<JobEvents, JobStates> {
  final formKey= GlobalKey<FormState>();

  JobBloc() : super(JobStates()) {
    on<GetJobEvent>(_getJob);
  }


  Future<void> _getJob(GetJobEvent ,
      Emitter<JobStates> emit,) async {
    emit(GetJobLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(GetJobSuccessState(msg: "Success"));
  }
}
