part of 'bloc.dart';

class GetLoginStates {}

class GetLoginLoadingState extends GetLoginStates {}

class GetLoginSuccessState extends GetLoginStates {
  final String msg;
  GetLoginSuccessState({required this.msg}){
    showMessage(msg,isSuccess: true);

  }
}

class GetLoginFailedState extends GetLoginStates {
  final String msg;
  GetLoginFailedState({required this.msg}){
    showMessage(msg);

  }
}
