import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/main/my_account/profile/add_portfolio/model.dart';

import '../../../../../core/logic/dio_helper.dart';
import '../../../../../core/logic/helper_methods.dart';

part 'events.dart';

part 'states.dart';

class AddPortfolioBloc extends Bloc<AddPortfolioEvents, AddPortfolioStates> {
  final formKey = GlobalKey<FormState>();

  AddPortfolioBloc() : super(AddPortfolioStates()) {
    on<GetAddPortfolioEvent>(_getData);
  }


  Future<void> _getData(GetAddPortfolioEvent event,
      Emitter<AddPortfolioStates> emit,) async {
    if (formKey.currentState!.validate()) {
      emit(GetAddPortfolioLoadingState());
      final response = await DioHelper.send("user/profile/portofolios", data: {

      });
      if(response.isSuccess){
        emit(GetAddPortfolioSuccessState(msg: response.msg??""));

      }else{
        emit(GetAddPortfolioFailedState(msg: response.msg??""));
      }
    }
  }
}
