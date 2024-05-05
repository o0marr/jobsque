part of 'bloc.dart';

class ProfileStates {}

class GetProfileLoadingState extends ProfileStates {}

class GetProfileSuccessState extends ProfileStates {
  final String msg;

  GetProfileSuccessState({required this.msg});
}

class GetProfileFailedState extends ProfileStates {
  final String msg;

  GetProfileFailedState({required this.msg});
}
