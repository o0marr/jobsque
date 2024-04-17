import 'dart:async';
import 'package:jobsque/core/logic/helper_methods.dart';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';

part 'states.dart';

class SliderBloc extends Bloc<SliderEvents, SliderStates> {
  SliderBloc() : super(SliderStates()) {
    on<GetSliderEvent>(_getData);
  }


  Future<void> _getData(GetSliderEvent event,
      Emitter<SliderStates> emit,) async {
    emit(GetSliderLoadingState());
    final response= await Dio().get("https://thimar.amr.aait-d.com/api/sliders");
    emit(GetSliderSuccessState(msg: "Success"));
  }
}
