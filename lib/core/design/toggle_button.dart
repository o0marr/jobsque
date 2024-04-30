import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
 bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        activeColor: Colors.blue,
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched=value;
          });
        },
      ),
    );
  }
}
