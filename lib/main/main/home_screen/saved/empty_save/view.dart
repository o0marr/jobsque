import 'package:flutter/material.dart';

import '../../../../../core/design/app_image.dart';


class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Job",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 38,right: 37,top: 121),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage("Saved.png",
                height: 142,
                width: 173,
              ),
              SizedBox(height: 24,),
              Text("Nothing has been saved yet",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
              SizedBox(height: 12,),
              Text("Press the star icon on the job you want to save.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff6B7280)),),
              SizedBox(height: 130,),



            ],
          ),
        ),
      ),

    );
  }
}
