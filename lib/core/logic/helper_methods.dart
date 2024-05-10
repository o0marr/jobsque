import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();

void navigateTo(Widget page, { bool KeepHistory = true }) {
  Navigator.pushAndRemoveUntil(
      navKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => page,
      ),
          (route) => KeepHistory);
}


void showMessage(String msg, {bool isSuccess = false}) {
 if(msg.isNotEmpty){
   ScaffoldMessenger.of(navKey.currentContext!).clearSnackBars();
   ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
       SnackBar(
         duration: Duration(seconds: 2),
           backgroundColor:isSuccess?Colors.green:Colors.red,
           behavior: SnackBarBehavior.floating,
           content: Center(
             child: Text(msg,style: TextStyle(
                 color: isSuccess?Colors.white:Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.w700
             ),),
           )
       )
   );
 }
}