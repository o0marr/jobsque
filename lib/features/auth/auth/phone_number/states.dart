part of 'bloc.dart';

class PhoneNumberStates {}

class GetPhoneNumberLoadingState extends PhoneNumberStates {}

class GetPhoneNumberSuccessState extends PhoneNumberStates {
  final String msg;

  GetPhoneNumberSuccessState({required this.msg});
}

class GetPhoneNumberFailedState extends PhoneNumberStates {
  final String msg;

  GetPhoneNumberFailedState({required this.msg});
}
