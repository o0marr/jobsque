import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/design/toggle_button.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/search_not_found/view.dart';

import '../../../../core/design/app_button.dart';
import '../../../../core/logic/helper_methods.dart';
import '../not_found/view.dart';

class Searches2View extends StatefulWidget {
  const Searches2View({Key? key}) : super(key: key);

  @override
  State<Searches2View> createState() => _Searches2ViewState();
}

class _Searches2ViewState extends State<Searches2View> {
  final List<String> items = [
    'Remote',
    'On-site',
    'Hybrid',
  ];
  String? selectedValue;
  final List<String> items2 = [
    'Full Time',
    'Part Time',
    'Contract',
    'Internship',
  ];
  String? selectedValue2;
  final List<String> items3 = [
    'Any time',
    'Past month',
    'Past week',
    'Past 24 hours',
  ];
  String? selectedValue3;
  final List<String> salary = [
    '5K - 10K',
    '15K - 20K',
    '25K - 30K',
    '35K - 40K',
  ];
  String? selectedValue4;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(left: 24, top: 14, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    navigateTo(HiView());
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Container(
                    height: 48,
                    width: 291,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Type something...",
                          labelText: "UI/UX Designer",
                          prefixIcon: Icon(Icons.search_sharp),
                          prefixIconColor: Colors.black),
                    ))
              ],
            ),
            SizedBox(
              height: 22,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return ListView.separated(
                                itemBuilder: (context, index) => Container(
                                  padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.arrow_back),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Set Filter",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 20),
                                                ),
                                                Spacer(),
                                                TextButton(
                                                    onPressed: () {
                                                    setState(() {

                                                    });
                                                    },
                                                    child: Text("Reset"))
                                              ],
                                            ),
                                            Text(
                                              "Job Tittle",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              child: AppInput(
                                                  label: "UI/UX Designer",
                                                  prefixIcon: "briefcase.png"),
                                              height: 78,
                                              width: 300,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              child: AppInput(
                                                  label:
                                                      "UI/Jakarta, Indonesia",
                                                  prefixIcon: "location.png"),
                                              height: 78,
                                              width: 300,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              child: AppInput(
                                                  label:
                                                      "UI/Jakarta, Indonesia",
                                                  prefixIcon: "location.png"),
                                              height: 78,
                                              width: 300,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              "Salary",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                            Center(
                                              child:
                                                  DropdownButtonHideUnderline(
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
                                                          'Salary',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  items: salary
                                                      .map((String item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: selectedValue4,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      selectedValue4 = value;
                                                    });
                                                  },
                                                  buttonStyleData:
                                                      ButtonStyleData(
                                                    height: 78,
                                                    width: 300,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 14,
                                                            right: 14),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                      border: Border.all(
                                                        color: Colors.black26,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    elevation: 2,
                                                  ),
                                                  iconStyleData:
                                                      const IconStyleData(
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                    ),
                                                    iconSize: 14,
                                                    iconEnabledColor:
                                                        Colors.black,
                                                    iconDisabledColor:
                                                        Colors.black,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    maxHeight: 200,
                                                    width: 200,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                      color: Colors.white,
                                                    ),
                                                    offset:
                                                        const Offset(-20, 0),
                                                    scrollbarTheme:
                                                        ScrollbarThemeData(
                                                      radius:
                                                          const Radius.circular(
                                                              40),
                                                      thickness:
                                                          MaterialStateProperty
                                                              .all<double>(6),
                                                      thumbVisibility:
                                                          MaterialStateProperty
                                                              .all<bool>(true),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    height: 40,
                                                    padding: EdgeInsets.only(
                                                        left: 14, right: 14),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              "Job Type",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    ChoiceChip(
                                                      label: const Text("Full Time"),
                                                      selected: isSelected,
                                                      selectedColor: Colors.orange,
                                                      disabledColor: Colors.white,
                                                      onSelected: (newState) {
                                                        setState(() {
                                                          isSelected = newState;
                                                        });
                                                      },

                                                    ),
                                                    SizedBox(width: 12,),
                                                    ChoiceChip(
                                                      label: const Text("Remote"),
                                                      selected: isSelected,
                                                      selectedColor: Colors.orange,
                                                      disabledColor: Colors.white,
                                                      onSelected: (newState) {
                                                        setState(() {
                                                          isSelected = newState;
                                                        });
                                                      },

                                                    ),
                                                    SizedBox(width: 12,),
                                                    ChoiceChip(
                                                      label: const Text("Contract"),
                                                      selected: isSelected,
                                                      selectedColor: Colors.orange,
                                                      disabledColor: Colors.white,
                                                      onSelected: (newState) {
                                                        setState(() {
                                                          isSelected = newState;
                                                        });
                                                      },

                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 16,),
                                                Row(children: [
                                                  ChoiceChip(
                                                    label: const Text("Part Time"),
                                                    selected: isSelected,
                                                    selectedColor: Colors.orange,
                                                    disabledColor: Colors.white,
                                                    onSelected: (newState) {
                                                      setState(() {
                                                        isSelected = newState;
                                                      });
                                                    },

                                                  ),
                                                  SizedBox(width: 12,),
                                                  ChoiceChip(
                                                    label: const Text("Onsite"),
                                                    selected: isSelected,
                                                    selectedColor: Colors.orange,
                                                    disabledColor: Colors.white,
                                                    onSelected: (newState) {
                                                      setState(() {
                                                        isSelected = newState;
                                                      });
                                                    },

                                                  ),
                                                  SizedBox(width: 12,),
                                                  ChoiceChip(
                                                    label: const Text("Internship"),
                                                    selected: isSelected,
                                                    selectedColor: Colors.orange,
                                                    disabledColor: Colors.white,
                                                    onSelected: (newState) {
                                                      setState(() {
                                                        isSelected = newState;
                                                      });
                                                    },

                                                  ),

                                                ],),
                                              ],
                                            ),
                                            SizedBox(height: 100,),
                                            AppButton(text:
                                            "Apply now",
                                              onPress: () async {
                                                navigateTo(NotFoundView());
                                              },

                                            ),

                                          ]),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(
                                      height: 800,
                                    ),
                                itemCount: 12);
                          },
                        );
                      },
                      icon: Container(
                          height: 24,
                          width: 24,
                          child: AppImage("setting-4.png"))),
                  Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                'Remote',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                                      color: Colors.white,
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
                            color: Color(0xff091A7A),
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Color(0xff091A7A),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xff091A7A),
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
                  SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                'Job type',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items2
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue2,
                        onChanged: (String? value) {
                          setState(() {
                            selectedValue2 = value;
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
                            color: Color(0xff091A7A),
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Color(0xff091A7A),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xff091A7A),
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
                  SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                'Post date',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items3
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue3,
                        onChanged: (String? value) {
                          setState(() {
                            selectedValue3 = value;
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
                            color: Color(0xff091A7A),
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Color(0xff091A7A),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xff091A7A),
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Featuring 120+ jobs",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280)),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "Zoom.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Product Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Zoom • United States",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "Spectrum.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Product Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Spectrum • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "VK.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Senior UI Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "VK • Yogyakarta, Indonesia ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "Invision.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Junior UI Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Invision • Jakarta, Indonesia ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "Behance.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Junior UI Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Behance • Surakarta, Indonesia ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 152,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF)),
              child: Column(children: [
                Row(
                  children: [
                    AppImage(
                      "Zoom.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Product Designer",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Zoom • United States",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        highlightColor: Colors.blue,
                        onPressed: () {},
                        icon: Container(
                            width: 24,
                            height: 24,
                            child: AppImage("archive.png")))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text("FullTime"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Remote",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 26,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffD6E4FF)),
                      child: Text(
                        "Design",
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Text(
                      "15K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2E8E18)),
                    ),
                    Text("/Month")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ))),
    );
  }
}
