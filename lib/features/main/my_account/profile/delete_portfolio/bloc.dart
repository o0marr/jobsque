import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';

part 'events.dart';

part 'states.dart';

class DeletePortfolioBloc
    extends Bloc<DeletePortfolioEvents, DeletePortfolioStates> {
  DeletePortfolioBloc() : super(DeletePortfolioStates()) {
    on<GetDeletePortfolioEvent>(_getData);
  }


  Future<void> _getData(GetDeletePortfolioEvent event,
      Emitter<DeletePortfolioStates> emit,) async {
    emit(GetDeletePortfolioLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/user/profile/portofolios/2?");
    final model =DeletePortfolio.fromJson(response.data);
    emit(GetDeletePortfolioSuccessState(msg: "Success"));
  }
}
