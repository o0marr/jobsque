
import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();

void navigateTo(Widget page,{ bool KeepHistory=true }) {
  Navigator.pushAndRemoveUntil(
      navKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => KeepHistory);
}
