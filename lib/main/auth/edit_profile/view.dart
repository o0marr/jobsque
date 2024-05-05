import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/core/logic/input_validator.dart';
import 'package:jobsque/main/auth/job_title/job_title.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';
import '../../../features/auth/auth/edit_profile/bloc.dart';
import '../../../features/main/my_account/profile/edit_profile/bloc.dart';


class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  XFile? image;
  final bloc = GetIt.I<EditProfileBloc>()..add(GetEditProfileEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile", style: TextStyle(color: Colors.black),),

          leading: IconButton(onPressed: () {

          }, icon: Icon(Icons.arrow_back),),
        ),
        body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if (state is GetEditProfileFailedState) {
            return Text(state.msg);
          } else if (state is GetEditProfileSuccessState) {
            return Scaffold(

              body: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: image != null
                          ? FileImage(File(image!.path)) as ImageProvider
                          : NetworkImage(
                          "https://media.licdn.com/dms/image/C5603AQEySmuHB1EwKQ/profile-displayphoto-shrink_800_800/0/1516263018272?e=2147483647&v=beta&t=C3s-TRyWgxxoFnUPJ1C-8fKDWwE948wKvG3Oy5H1RFY"),
                      child: IconButton(
                        icon: Icon(Icons.camera_alt_outlined, color: Theme
                            .of(context)
                            .primaryColor),
                        onPressed: () async {
                          image =
                          await ImagePicker().pickImage(
                              source: ImageSource.camera);
                          setState(() {});
                        },
                      ),
                    ),
                    TextButton(onPressed: () async {
                      image =
                      await ImagePicker().pickImage(
                          source: ImageSource.gallery);
                      setState(() {});
                    }, child: Text("Change  Photo")),
                    SizedBox(
                      height: 24,
                    ),
                    AppInput(
                      controller: bloc.nameController,
                      label: "Username",
                      inputType: TextInputType.name,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.bioController,
                      label: "Bio",
                      inputType: TextInputType.text,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.addressController,
                      label: "Address",
                      inputType: TextInputType.emailAddress,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.passwordController,
                      label: "No.phone",
                      validator: InputValidator.phone,
                      inputType: TextInputType.phone,
                      prefixIcon: "",
                    ),
                    SizedBox(
                      height: 22.5,
                    ),
                AppButton(text:
                "Save",
                  onPress: () async {
                    navigateTo(JobTitleView());
                  },

                ),

                  ],
                ),
              ),
            );
          } else {
            return  Scaffold(

              body: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: image != null
                          ? FileImage(File(image!.path)) as ImageProvider
                          : NetworkImage(
                          "https://media.licdn.com/dms/image/C5603AQEySmuHB1EwKQ/profile-displayphoto-shrink_800_800/0/1516263018272?e=2147483647&v=beta&t=C3s-TRyWgxxoFnUPJ1C-8fKDWwE948wKvG3Oy5H1RFY"),
                      child: IconButton(
                        icon: Icon(Icons.camera_alt_outlined, color: Theme
                            .of(context)
                            .primaryColor),
                        onPressed: () async {
                          image =
                          await ImagePicker().pickImage(
                              source: ImageSource.camera);
                          setState(() {});
                        },
                      ),
                    ),
                    TextButton(onPressed: () async {
                      image =
                      await ImagePicker().pickImage(
                          source: ImageSource.gallery);
                      setState(() {});
                    }, child: Text("Change  Photo")),
                    SizedBox(
                      height: 24,
                    ),
                    AppInput(
                      controller: bloc.nameController,
                      label: "Username",
                      inputType: TextInputType.name,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.bioController,
                      label: "Bio",
                      inputType: TextInputType.text,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.addressController,
                      label: "Address",
                      inputType: TextInputType.emailAddress,
                      prefixIcon: "profile.png",
                    ),
                    AppInput(
                      controller: bloc.passwordController,
                      label: "No.phone",
                      validator: InputValidator.phone,
                      isPhone: true,
                      inputType: TextInputType.phone,
                      prefixIcon: "",
                    ),
                    SizedBox(
                      height: 22.5,
                    ),
                    AppButton(text:
                    "Save",
                      onPress: () async {
                        navigateTo(JobTitleView());
                      },

                    ),

                  ],
                ),
              ),
            );;
          }
        }
   )
        );
  }
}
