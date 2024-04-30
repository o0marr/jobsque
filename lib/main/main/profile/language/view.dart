import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Language",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 24, top: 36, right: 24),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppImage("England.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("English",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 1, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Indonesia.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Indonesia",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 2, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Saudi Arabia.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Arabic",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 3, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("China.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Chinese",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 4, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Netherlands.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Dutch",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 5, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("France.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("French",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 6, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Germany.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("German",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 7, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Japan.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Japanese",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 8, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("South Korea.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Korean",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 9, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                AppImage("Portugal.png",width: 30,height: 20,),
                SizedBox(width: 12,),
                Text("Portuguese",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                Radio(value: 10, groupValue: _value, onChanged: (value) {
                  setState(() {
                    _value =value!;

                  });
                },),

              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                )),
            SizedBox(height: 10,),


          ],
        ),
      )),
    );
  }
}
