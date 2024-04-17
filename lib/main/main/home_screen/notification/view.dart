import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_image.dart';


class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification",style: TextStyle(color:Colors.black),),),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 36,
              color: Color(0xffF4F4F5),
              child: Center(
                  child: Text(
                    "New",
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )),
            ),
            SizedBox(height: 21,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Dana.png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Dana ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Posted new design jobs",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("10.00AM"),


              ]),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Shoope.png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Shoope ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Posted new design jobs",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("10.00AM"),


              ]),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Slack (2).png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Slack",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Posted new design jobs",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("10.00AM"),


              ]),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Facebook.png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Facebook",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Posted new design jobs",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("10.00AM"),


              ]),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 39,),
            Container(
              width: double.infinity,
              height: 36,
              color: Color(0xffF4F4F5),
              child: Center(
                  child: Text(
                    "Yesterday",
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )),
            ),
            SizedBox(height: 21,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Email.png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Email setup successful",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Your email setup was successful with the following\n details: Your new email is rafifdianganz@gmail.com.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 8,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("10.00AM"),


              ]),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 54,
              child: Row(children: [
                AppImage("Jobsque.png",width: 40,height: 40,),
                Spacer(),
                Column(
                  children: [
                    Text("Welcome to Jobsque",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    SizedBox(height: 4,),
                    Text("Hello Rafif Dian Axelingga, thank you for registering\n Jobsque. Enjoy the various features that....",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 8,color: Color(0xff6B7280)),)
                  ],
                ),
                Spacer(),
                Text("08.00AM"),


              ]),
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 1,
              color: Color(0xffE5E7EB),
              alignment: Alignment.center,
            ),
            SizedBox(height: 30,),



          ],
        ),
      ),
    );
  }
}
