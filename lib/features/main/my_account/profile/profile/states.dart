part of 'bloc.dart';

class ProfileDataStates {}

class GetProfileDataLoadingState extends ProfileDataStates {}

class GetProfileDataSuccessState extends ProfileDataStates {
  final String msg;

  GetProfileDataSuccessState({required this.msg}){
    showMessage(msg,isSuccess: true);
  }
}

class GetProfileDataFailedState extends ProfileDataStates {
  final String msg;

  GetProfileDataFailedState({required this.msg}){
    showMessage(msg);
  }
}
