part of 'bloc.dart';

class EditProfileStates {}

class GetEditProfileLoadingState extends EditProfileStates {}

class GetEditProfileSuccessState extends EditProfileStates {
  final String msg;
  final List<EditProfileModel>list;



  GetEditProfileSuccessState({required this.msg,required this.list});
}

class GetEditProfileFailedState extends EditProfileStates {
  final String msg;

  GetEditProfileFailedState({required this.msg});
}
