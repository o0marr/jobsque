import 'package:flutter/material.dart';


class DropDownButtonView extends StatefulWidget {
  const DropDownButtonView({Key? key}) : super(key: key);

  @override
  State<DropDownButtonView> createState() => _DropDownButtonViewState();
}

class _DropDownButtonViewState extends State<DropDownButtonView> {
  String dropdownvalue = 'UI/UX Designer';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownvalue,
        icon: const Icon(Icons.arrow_downward),

        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
        items: [DropdownMenuItem<String>(
            value: "UI/UX Designer",
            child: Text("UI/UX Designer")
        )],
      ),
    );

  }
}
