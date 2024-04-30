import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';


class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  final List<String> items = [
    'Full Time',
    'Part Time',
    'Contract',
    'Internship',
  ];
  String? selectedValue;
  bool? isChecked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Experience",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 327,
                    height: 640,
                    padding: EdgeInsets.only(left: 12,top: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.grey)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Position *",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        TextFormField(keyboardType: TextInputType.name,
                          textAlign: TextAlign.start,


                        ),
                        SizedBox(height: 16,),
                        Text(
                          "Type of work",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                    Center(
                      child: Container(
                        width: 327,
                        height: 56,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Expanded(
                                  child: Text(
                                    'Full Time',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: items
                                .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 50,
                              width: 100,
                              padding: const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                                color: Color(0xffffffff),
                              ),
                              elevation: 2,
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                              ),
                              iconSize: 14,
                              iconEnabledColor: Colors.white,
                              iconDisabledColor: Color(0xffffffff),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xffffffff),
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                        SizedBox(height: 16,),
                        Text(
                          "Company name *",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        TextFormField(keyboardType: TextInputType.name,
                          textAlign: TextAlign.start,


                        ),
                        SizedBox(height: 16,),
                        Text(
                          "Location",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        AppInput(label: "Purwokerto, Banyumas", prefixIcon: "location.png"),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Checkbox(value: isChecked, onChanged: (value) {
                              setState(() {
                                isChecked=value;
                              });
                            },),
                            Text("I am currently working in this role")
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text(
                          "Start Year *",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        TextFormField(keyboardType: TextInputType.name,
                          textAlign: TextAlign.start,


                        ),
                        SizedBox(height: 16,),
                        AppButton(text:
                        "Save",
                          onPress: () async {
                          },),

                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    height: 99,
                    width: 329,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.grey)),
                    child: Row(
                      children: [
                        AppImage("15495.png",width: 44,
                          height: 44,
                        ),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Senior UI/UX Designer",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                              SizedBox(height: 4,),
                              Text("Remote • GrowUp Studio",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              SizedBox(height: 2,),
                              Text("2019 - 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14 ,color: Color(0xff6B7280)),),

                            ],),
                        ),
                        Spacer(),
                        IconButton(onPressed: () {

                        }, icon: AppImage("edit-2.png",width: 24,height: 24,))
                      ],
                    ),

                  )

                ],
              ),
            ),
          )),
    );
  }
}
