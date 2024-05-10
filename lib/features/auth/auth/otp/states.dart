part of 'bloc.dart';

class OtpStates {}

class GetOtpLoadingState extends OtpStates {}

class GetOtpSuccessState extends OtpStates {
  final String msg;

  GetOtpSuccessState({required this.msg}){
    showMessage(msg,isSuccess: true);

  }
}

class GetOtpFailedState extends OtpStates {
  final String msg;

  GetOtpFailedState({required this.msg}){
    showMessage(msg);

  }
}
