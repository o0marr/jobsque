import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/features/auth/auth/edit_profile/bloc.dart';
import 'package:jobsque/main/main/profile/complete_profile/education/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';
import '../../../../features/main/my_account/profile/edit_profile/bloc.dart';
import '../Phone_number/view.dart';
import '../portfolio/view.dart';

class EditprofileView extends StatefulWidget {
  const EditprofileView({Key? key}) : super(key: key);

  @override
  State<EditprofileView> createState() => _EditprofileViewState();
}

class _EditprofileViewState extends State<EditprofileView> {
  XFile? image;
  final bloc = GetIt.I<EditProfile2Bloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Form(
        key: bloc.formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 24, top: 36, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: IconButton(
                            onPressed: () async {
                              image = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            )),
                        backgroundImage: image != null
                            ? FileImage(File(image!.path)) as ImageProvider
                            : AssetImage("assets/images/personi.png"),
                      ),
                      TextButton(
                          onPressed: () async {
                            image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            setState(() {});
                          },
                          child: Text("Change  Photo"))
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Bio",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                TextFormField(keyboardType: TextInputType.name),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                TextFormField(keyboardType: TextInputType.streetAddress),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "No.Handphone",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                AppInput(label: "0100-666-7234", prefixIcon: "FLAG.png"),
                SizedBox(
                  height: 30,
                ),
                AppButton(
                  text: "Save",
                  onPress: () async {
                    navigateTo(EducationView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
