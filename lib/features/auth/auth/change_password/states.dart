part of 'bloc.dart';

class ChangePasswordStates {}

class GetChangePasswordLoadingState extends ChangePasswordStates {}

class GetChangePasswordSuccessState extends ChangePasswordStates {
  final String msg;

  GetChangePasswordSuccessState({required this.msg}){
    showMessage(msg,isSuccess: true);
  }
}

class GetChangePasswordFailedState extends ChangePasswordStates {
  final String msg;

  GetChangePasswordFailedState({required this.msg}){
    showMessage(msg);
  }
}
