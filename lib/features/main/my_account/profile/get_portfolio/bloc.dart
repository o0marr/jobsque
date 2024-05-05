import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class GetPortfolioBloc extends Bloc<GetPortfolioEvents, GetPortfolioStates> {
  GetPortfolioBloc() : super(GetPortfolioStates()) {
    on<GetGetPortfolioEvent>(_getData);
  }


  Future<void> _getData(GetGetPortfolioEvent event,
      Emitter<GetPortfolioStates> emit,) async {
    emit(GetGetPortfolioLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/user/profile/portofolios?");
    final model =PortofolioData.fromJson(response.data);
    emit(GetGetPortfolioSuccessState(msg: "Success"));
  }
}
