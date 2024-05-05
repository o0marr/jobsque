import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/main/my_account/profile/add_portfolio/model.dart';

part 'events.dart';

part 'states.dart';

class AddPortfolioBloc extends Bloc<AddPortfolioEvents, AddPortfolioStates> {
  AddPortfolioBloc() : super(AddPortfolioStates()) {
    on<GetAddPortfolioEvent>(_getData);
  }


  Future<void> _getData(GetAddPortfolioEvent event,
      Emitter<AddPortfolioStates> emit,) async {
    emit(GetAddPortfolioLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/user/profile/portofolios?");
    final model =AddPortfolioData.fromJson(response.data);
    emit(GetAddPortfolioSuccessState(msg: "Success"));
  }
}
