part of 'bloc.dart';

class GetAllJobsStates {}

class GetGetAllJobsLoadingState extends GetAllJobsStates {}

class GetGetAllJobsSuccessState extends GetAllJobsStates {
  final String msg;
  final List<GetAllJobsModel>list;

  GetGetAllJobsSuccessState( {required this.list,required this.msg});
}

class GetGetAllJobsFailedState extends GetAllJobsStates {
  final String msg;

  GetGetAllJobsFailedState({required this.msg});
}
