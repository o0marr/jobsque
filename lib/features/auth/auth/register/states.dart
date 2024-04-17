part of 'bloc.dart';

class RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {
  final String msg;

  RegisterSuccessState({required this.msg});
}

class RegisterFailedState extends RegisterStates {
  final String msg;

  RegisterFailedState({required this.msg});
}
