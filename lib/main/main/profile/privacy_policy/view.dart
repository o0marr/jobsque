import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 24, top: 32, right: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Your privacy is important",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            " Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nam vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Nam vel augue sit amet est\n molestie viverra. Nunc quis bibendum orci. Donec\n feugiat massa mi, at hendrerit mauris rutrum at. Lorem\n ipsum dolor sit amet, consectetur adipiscing elit. Nam\n vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. ",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280)),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Nam vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Nam vel augue sit amet est\n molestie viverra. Nunc quis bibendum orci. Donec\n feugiat massa mi, at hendrerit mauris rutrum at. ",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280)),
          ),
          SizedBox(
            height: 24,
          ),
          Text("Data controllers and contract partners",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
          SizedBox(height: 12,),
          Text(
            " Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nam vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Nam vel augue sit amet est\n molestie viverra. Nunc quis bibendum orci. Donec\n feugiat massa mi, at hendrerit mauris rutrum at. Lorem\n ipsum dolor sit amet, consectetur adipiscing elit. Nam\n vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. ",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280)),
          ),

        ]),
      )),
    );
  }
}
