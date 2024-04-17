part of 'bloc.dart';

class SliderStates {}

class GetSliderLoadingState extends SliderStates {}


class GetSliderSuccessState extends SliderStates {
  final String msg;

  GetSliderSuccessState({ required this.msg});
}

class GetSliderFailedState extends SliderStates {
  final String msg;

  GetSliderFailedState({required this.msg});
}
