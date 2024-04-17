part of 'bloc.dart';

class JobStates {}

class GetJobLoadingState extends JobStates {}

class GetJobSuccessState extends JobStates {
  final String msg;

  GetJobSuccessState({required this.msg});
}

class GetJobFailedState extends JobStates {
  final String msg;

  GetJobFailedState({required this.msg});
}
