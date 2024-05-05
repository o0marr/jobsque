import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class NotificationBloc extends Bloc<NotificationEvents, NotificationStates> {
  NotificationBloc() : super(NotificationStates()) {
    on<GetNotificationEvent>(_getData);
  }


  Future<void> _getData(GetNotificationEvent event,
      Emitter<NotificationStates> emit,) async {
    emit(GetNotificationLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/notification/1?");
    final model =NotificationData.fromJson(response.data);
    emit(GetNotificationSuccessState(msg: "Success"));
  }
}
