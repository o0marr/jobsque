part of 'bloc.dart';

class CreateNewPasswordStates {}

class GetCreateNewPasswordLoadingState extends CreateNewPasswordStates {}

class GetCreateNewPasswordSuccessState extends CreateNewPasswordStates {
  final String msg;

  GetCreateNewPasswordSuccessState({required this.msg});
}

class GetCreateNewPasswordFailedState extends CreateNewPasswordStates {
  final String msg;

  GetCreateNewPasswordFailedState({required this.msg});
}
