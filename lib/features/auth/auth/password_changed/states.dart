part of 'bloc.dart';

class PasswordChangedStates {}

class GetPasswordChangedLoadingState extends PasswordChangedStates {}

class GetPasswordChangedSuccessState extends PasswordChangedStates {
  final String msg;

  GetPasswordChangedSuccessState({required this.msg});
}

class GetPasswordChangedFailedState extends PasswordChangedStates {
  final String msg;

  GetPasswordChangedFailedState({required this.msg});
}
