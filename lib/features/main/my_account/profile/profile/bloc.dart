import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/main/my_account/profile/profile/model.dart';


part 'events.dart';

part 'states.dart';

class ProfileBloc extends Bloc<ProfileEvents, ProfileStates> {
  ProfileBloc() : super(ProfileStates()) {
    on<GetProfileEvent>(_getData);
  }


  Future<void> _getData(GetProfileEvent event,
      Emitter<ProfileStates> emit,) async {
    emit(GetProfileLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/auth/auth/profile?");
    final model =Profile.fromJson(response.data);
    emit(GetProfileSuccessState(msg: "Success"));
  }
}
