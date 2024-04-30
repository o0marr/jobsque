import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/file_picker.dart';
import 'package:jobsque/main/main/profile/complete_profile/done/view.dart';
import 'package:jobsque/main/main/profile/notification/view.dart';

import '../../../../../core/logic/helper_methods.dart';




class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portfolio",
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
              Text("Add portfolio here",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
              SizedBox(height: 16,),
              Center(
                child: Container(
                    width: 327,
                    height: 223,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xff3366FF),border: Border.all(width: 1,color: Colors.cyan,style: BorderStyle.solid)),
                    child: UploadPDFScreen()),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 327,
                  height: 81,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color(0xffD1D5DB),
                          style: BorderStyle.solid,
                          width: 1
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppImage("pdf.png",height: 40,
                        width: 40,),
                      Column(
                        children: [
                          Text("UI/UX Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          Text("CV.pdf 300KB", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: () {

                      },icon:AppImage("edit-2.png",height: 24,width: 24,),),
                      SizedBox(width:8 ,),
                      IconButton(onPressed: () {

                      },icon: AppImage("close-circle.png",height: 24,width: 24,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  width: 327,
                  height: 81,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color(0xffD1D5DB),
                          style: BorderStyle.solid,
                          width: 1
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppImage("pdf.png",height: 40,
                        width: 40,),
                      Column(
                        children: [
                          Text("3D Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          Text("CV.pdf 300KB", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: () {

                      },icon:AppImage("edit-2.png",height: 24,width: 24,),),
                      SizedBox(width:8 ,),
                      IconButton(onPressed: () {

                      },icon: AppImage("close-circle.png",height: 24,width: 24,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  width: 327,
                  height: 81,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color(0xffD1D5DB),
                          style: BorderStyle.solid,
                          width: 1
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppImage("pdf.png",height: 40,
                        width: 40,),
                      Column(
                        children: [
                          Text("Graphik Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          Text("CV.pdf 300KB", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: () {

                      },icon:AppImage("edit-2.png",height: 24,width: 24,),),
                      SizedBox(width:8 ,),
                      IconButton(onPressed: () {

                      },icon: AppImage("close-circle.png",height: 24,width: 24,)),
                    ],
                  ),
                ),
              ),
              AppButton(
                text: "Save",
                onPress: () async {
                  navigateTo(DoneView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
