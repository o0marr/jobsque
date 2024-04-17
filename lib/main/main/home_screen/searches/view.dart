import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/app_input.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/main/home_screen/hi/view.dart';
import 'package:jobsque/main/main/home_screen/searches2/view%20.dart';


class SearchesView extends StatelessWidget {
  const SearchesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 24,top: 14,right: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                    navigateTo(HiView());
                  },icon: Icon(Icons.arrow_back),),
                  Container(
                      height: 48,
                      width: 291,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(8.0) ,
                            borderSide:BorderSide.none ,
                          ),
                          hintText: "Type something...",
                          prefixIcon: Icon(Icons.search_sharp),
                          prefixIconColor: Colors.black

                        ),
                      ))
                ],
              ),
              SizedBox(height: 30,),
              Text("Recent searches",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 28,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("Junior UI Designer"),
                    Spacer(),
                    IconButton(onPressed: () {

                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("Junior UX Designer"),
                    Spacer(),
                    IconButton(onPressed: () {

                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("Product Designer"),
                    Spacer(),
                    IconButton(onPressed: () {

                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("Project Manager"),
                    Spacer(),
                    IconButton(onPressed: () {

                    },icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("UI/UX Designer"),
                    Spacer(),
                    IconButton(onPressed: () {

                    },icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 10,),
                    Text("Front-End Developer"),
                    Spacer(),
                    IconButton(onPressed: () {

                    },icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("close-circle.png")))
                  ],),
                  SizedBox(height: 40,),
                  Text("Popular searches",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 28,),
                  Row(children: [
                      Container(
                      height: 22,
                      width: 22,
                      child: AppImage("search-status.png")),
                    SizedBox(width: 10,),
                    Text("Junior UI Designer"),
                    Spacer(),
                    IconButton(onPressed: () {
                      navigateTo(Searches2View());
                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("arrow-right.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Container(
                        height: 22,
                        width: 22,
                        child: AppImage("search-status.png")),
                    SizedBox(width: 10,),
                    Text("Project Manager"),
                    Spacer(),
                    IconButton(onPressed: () {
                      navigateTo(Searches2View());

                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("arrow-right.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Container(
                        height: 22,
                        width: 22,
                        child: AppImage("search-status.png")),
                    SizedBox(width: 10,),
                    Text("Product Designer"),
                    Spacer(),
                    IconButton(onPressed: () {
                      navigateTo(Searches2View());

                    }, icon:Container(
                        height: 22,
                        width: 22,
                        child: AppImage("arrow-right.png")))
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Container(
                        height: 22,
                        width: 22,
                        child: AppImage("search-status.png")),
                    SizedBox(width: 10,),
                    Text("UX Designer"),
                    Spacer(),
                    AbsorbPointer(
                      child: IconButton(onPressed: () {

                          navigateTo(Searches2View());

                      }, icon:Container(
                          height: 22,
                          width: 22,
                          child: AppImage("arrow-right.png"))),
                    )
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Container(
                        height: 22,
                        width: 22,
                        child: AppImage("search-status.png")),
                    SizedBox(width: 10,),
                    Text("Front-End Developer",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                    Spacer(),
                    AbsorbPointer(
                      child: IconButton(onPressed: () {
                        navigateTo(Searches2View());
                      }, icon:Container(
                          height: 22,
                          width: 22,
                          child: AppImage("arrow-right.png"))),
                    )
                  ],),
                  SizedBox(height: 10,),






                ]),
          ),
        ),
      ),


    );
  }
}
