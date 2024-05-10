part of 'bloc.dart';

class BioDataStates {}

class GetBioDataLoadingState extends BioDataStates {}

class GetBioDataSuccessState extends BioDataStates {
  final String msg;

  GetBioDataSuccessState({required this.msg});
}

class GetBioDataFailedState extends BioDataStates {
  final String msg;

  GetBioDataFailedState({required this.msg});
}
