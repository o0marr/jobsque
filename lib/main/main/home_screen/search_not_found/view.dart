import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';

class SearchNotFoundView extends StatelessWidget {
  const SearchNotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:  Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),

          AppInput(label: "Search", prefixIcon: "search-normal.png"),
        ],
      ),),
      body: Column(children: [
        SizedBox(height: 24,),

        Center(
          child: Column(children: [AppImage(
            "Ilustration.png",
            height: 173,
            width: 142,
          ),
            SizedBox(
              height: 24,
            ),
            Text("Search not found",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 12,
            ),
            Center(
                child: Text(
                    "Try searching with different keywords so\nwe can show you",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280))))],),
        ),

      ]),
    );
  }
}
