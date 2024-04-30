import 'package:flutter/material.dart';
import 'package:jobsque/core/design/toggle_button.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
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
              Container(
                width: double.infinity,
                height: 36,
                color: Color(0xffF4F4F5),
                child: Center(
                    child: Text(
                  "Job notification",
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Your Job Search Alert",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                width: 327,
                height: 2,
                color: Colors.grey,
              )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Job Application Update",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Job Application Reminders",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Jobs You May Be Interested In",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Job Seeker Updates",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 32,
              ),
              Container(
                width: double.infinity,
                height: 36,
                color: Color(0xffF4F4F5),
                child: Center(
                    child: Text(
                      "Other notification",
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    )),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Text(
                    "Show Profile",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "All Message",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Message Nudges",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  ToggleButton()
                ],
              ),
              Center(
                  child: Container(
                    width: 327,
                    height: 2,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 40,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
