import 'dart:async';
import 'package:dio/dio.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/auth/my_account/profile/edit_profile/model.dart';

part 'events.dart';

part 'states.dart';

class EditProfileBloc extends Bloc<EditProfileEvents, EditProfileStates> {
  EditProfileBloc() : super(EditProfileStates()) {
    on<GetEditProfileEvent>(_getData);
  }


  Future<void> _getData(GetEditProfileEvent event,
      Emitter<EditProfileStates> emit,) async {
    emit(GetEditProfileLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/edit?");
    final model =EditProfileModel.fromJson(response.data);
emit(GetEditProfileSuccessState(msg: "Success"));
  }
}
