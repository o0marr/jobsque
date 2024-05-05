part of 'bloc.dart';

class NotificationStates {}

class GetNotificationLoadingState extends NotificationStates {}

class GetNotificationSuccessState extends NotificationStates {
  final String msg;

  GetNotificationSuccessState({required this.msg});
}

class GetNotificationFailedState extends NotificationStates {
  final String msg;

  GetNotificationFailedState({required this.msg});
}
