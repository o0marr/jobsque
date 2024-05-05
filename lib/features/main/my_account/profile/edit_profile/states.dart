part of 'bloc.dart';

class EditProfile2States {}

class GetEditProfile2LoadingState extends EditProfile2States {}

class GetEditProfile2SuccessState extends EditProfile2States {
  final String msg;

  GetEditProfile2SuccessState({ required this.msg});
}

class GetEditProfile2FailedState extends EditProfile2States {
  final String msg;

  GetEditProfile2FailedState({required this.msg});
}
