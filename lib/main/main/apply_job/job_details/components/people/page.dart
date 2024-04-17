import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/drop_down_button.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';

import '../../../../../../core/design/app_button.dart';
import '../../../../../../core/logic/helper_methods.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("6 Employees For",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                        Text("UI/UX Design",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xff6B7280)),),
                      ],
                    ),
                    SizedBox(width: 120,),
                    DropDownButtonView()
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    AppImage("Dimas.png",
                    width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Dimas Adi Saputro",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 28,),

                Row(
                  children: [
                    AppImage("Syahrul.png",
                    width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Syahrul Ramadhani",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 28,),

                Row(
                  children: [
                    AppImage("Farrel.png",
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Farrel Daniswara",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("4 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 28,),

                Row(
                  children: [
                    AppImage("Azzahra.png",
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Azzahra Farrelika",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("4 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 28,),

                Row(
                  children: [
                    AppImage("Dimas.png",
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Dindra Desmipian",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("6 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 28,),

                Row(
                  children: [
                    AppImage("Dimas.png",
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 50,),
                    Column(children: [
                      Text("Ferdi Saputra",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                    ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                      Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                    ],),

                  ],
                ),
                SizedBox(height: 140,),
                AppButton(text:
                "Apply now",
                  onPress: () async {
                    navigateTo(ApplyView());
                  },

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
