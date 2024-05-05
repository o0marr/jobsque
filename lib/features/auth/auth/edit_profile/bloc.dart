import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/features/auth/auth/edit_profile/model.dart';


part 'events.dart';

part 'states.dart';

class EditProfileBloc extends Bloc<EditProfileEvents, EditProfileStates> {
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  EditProfileBloc() : super(EditProfileStates()) {
    on<GetEditProfileEvent>(_getData);
  }


  Future<void> _getData(GetEditProfileEvent event,
      Emitter<EditProfileStates> emit,) async {
    emit(GetEditProfileLoadingState());
    final response= await Dio().get("https://project2.amit-learning.com/api/profile/auth/user/update?");
    final model =EditProfileData.fromJson(response.data);
    emit(GetEditProfileSuccessState(msg: "Success"));
  }
}
