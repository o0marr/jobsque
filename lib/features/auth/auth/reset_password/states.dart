part of 'bloc.dart';

class ResetPasswordStates {}

class GetResetPasswordLoadingState extends ResetPasswordStates {}

class GetResetPasswordSuccessState extends ResetPasswordStates {
  final String msg;

  GetResetPasswordSuccessState({required this.msg});
}

class GetResetPasswordFailedState extends ResetPasswordStates {
  final String msg;

  GetResetPasswordFailedState({required this.msg});
}
