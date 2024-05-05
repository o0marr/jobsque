part of 'bloc.dart';

class LoginAndSecurityStates {}

class GetLoginAndSecurityLoadingState extends LoginAndSecurityStates {}

class GetLoginAndSecuritySuccessState extends LoginAndSecurityStates {
  final String msg;

  GetLoginAndSecuritySuccessState({required this.msg});
}

class GetLoginAndSecurityFailedState extends LoginAndSecurityStates {
  final String msg;

  GetLoginAndSecurityFailedState({required this.msg});
}
