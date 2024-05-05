part of 'bloc.dart';

class ExperienceStates {}

class GetExperienceLoadingState extends ExperienceStates {}

class GetExperienceSuccessState extends ExperienceStates {
  final String msg;

  GetExperienceSuccessState({required this.msg});
}

class GetExperienceFailedState extends ExperienceStates {
  final String msg;

  GetExperienceFailedState({required this.msg});
}
