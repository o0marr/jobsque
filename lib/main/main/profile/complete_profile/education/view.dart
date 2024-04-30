import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:table_calendar/table_calendar.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  DateTime _dateTime =DateTime.now();
  DateTime _dateTime2 =DateTime.timestamp();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1965),
        lastDate: DateTime(2090),
    ).then((value) {
      setState(() {
        _dateTime=value!;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Education",
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
                    height: 450,
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
                          "University *",
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
                          "Title",
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
                          "Start Year",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              child: Text(_dateTime.toString(),style: TextStyle(fontSize: 15),),
                            ),
                            Container(
                              width: 50,
                              child: MaterialButton(onPressed: _showDatePicker,
                                child: Icon(Icons.calendar_month_outlined),

                              ),),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text(
                          "End Year",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff6B7280)),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              child: Text(_dateTime2.toString(),style: TextStyle(fontSize: 15),),
                            ),
                            Container(
                              width: 50,
                              child: MaterialButton(onPressed: _showDatePicker,
                                child: Icon(Icons.calendar_month_outlined),

                              ),),
                          ],
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
                        AppImage("educ.png",width: 44,
                          height: 44,
                        ),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("The University of Arizona",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                            SizedBox(height: 4,),
                            Text("Bachelor of Art and Design",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            SizedBox(height: 2,),
                            Text("2012 - 2015",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14 ,color: Color(0xff6B7280)),),

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
