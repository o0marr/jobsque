part of 'bloc.dart';

class EditProfileStates {}

class GetEditProfileLoadingState extends EditProfileStates {}

class GetEditProfileSuccessState extends EditProfileStates {
  final String msg;

  GetEditProfileSuccessState({required this.msg});
}

class GetEditProfileFailedState extends EditProfileStates {
  final String msg;

  GetEditProfileFailedState({required this.msg});
}
