part of 'bloc.dart';

class RegisterStates {}

class GetRegisterLoadingState extends RegisterStates {}

class GetRegisterSuccessState extends RegisterStates {
  final String msg;

  GetRegisterSuccessState({required this.msg});
}

class GetRegisterFailedState extends RegisterStates {
  final String msg;

  GetRegisterFailedState({required this.msg});
}
