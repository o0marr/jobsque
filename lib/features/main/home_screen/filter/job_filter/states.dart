part of 'bloc.dart';

class JobFilterStates {}

class GetJobFilterLoadingState extends JobFilterStates {}

class GetJobFilterSuccessState extends JobFilterStates {
  final String msg;

  GetJobFilterSuccessState({required this.msg});
}

class GetJobFilterFailedState extends JobFilterStates {
  final String msg;

  GetJobFilterFailedState({required this.msg});
}
