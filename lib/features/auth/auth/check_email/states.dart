part of 'bloc.dart';

class CheckEmailStates {}

class GetCheckEmailLoadingState extends CheckEmailStates {}

class GetCheckEmailSuccessState extends CheckEmailStates {
  final String msg;

  GetCheckEmailSuccessState({required this.msg});
}

class GetCheckEmailFailedState extends CheckEmailStates {
  final String msg;

  GetCheckEmailFailedState({required this.msg});
}
