import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/main/main/profile/complete_profile/view.dart';
import 'package:jobsque/main/main/profile/portfolio/view.dart';

import '../../../../../core/design/app_button.dart';
import '../../../../../core/logic/helper_methods.dart';


class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: SafeArea(
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
                  navigateTo(CompleteProfileView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
