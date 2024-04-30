import 'package:checkmark/checkmark.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/main/profile/complete_profile/education/view.dart';
import 'package:jobsque/main/main/profile/complete_profile/experience/view.dart';
import 'package:jobsque/main/main/profile/complete_profile/personal_details/view.dart';
import 'package:jobsque/main/main/profile/complete_profile/portfolio/view.dart';
import 'package:percent_indicator/percent_indicator.dart';


class DoneView extends StatefulWidget {
  const DoneView({Key? key}) : super(key: key);

  @override
  State<DoneView> createState() => _DoneViewState();
}

class _DoneViewState extends State<DoneView> {
  List<bool> _isSelected = [false, true];
  bool isSelected2 = true;
  bool checked = true;
  bool checked2 = true;
  bool checked3 = true;
  bool checked4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Complete Profile",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),

      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(5.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1000,
                      addAutomaticKeepAlive: true,
                      radius: 50,
                      lineWidth: 10,
                      percent: 1,
                      center: Text("100%",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),),
                      progressColor: Colors.blue,

                    ),
                    SizedBox(height: 20,),
                    Text("Completed!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                    SizedBox(height: 8,),
                    Text("Complete your profile before applying for a job",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                    SizedBox(height: 34,),
                    Container(
                      decoration: BoxDecoration(
                          color: checked
                              ? Color(0xff84A9FF)
                              : Colors.white
                          ,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked = !checked;
                                });
                              },
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: CheckMark(
                                  active: checked,
                                  curve: Curves.decelerate,
                                  duration: const Duration(milliseconds: 500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Personal Details",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                              SizedBox(height: 4,),
                              Text("Full name, email, phone number, and your\n address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                            ],
                          ),
                          Spacer(),
                          IconButton(onPressed: () {
                            setState(() {
                              checked = !checked;
                              navigateTo(PersonalDetailsView());
                            });
                          }, icon: Icon(Icons.arrow_forward))

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: checked2
                              ? Color(0xff84A9FF)
                              : Colors.white
                          ,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked2 = !checked2;
                                });
                              },
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: CheckMark(
                                  active: checked2,
                                  curve: Curves.decelerate,
                                  duration: const Duration(milliseconds: 500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Education",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                              SizedBox(height: 4,),
                              Text("Enter your educational history to be\n considered by the recruiter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                            ],
                          ),
                          Spacer(),
                          IconButton(onPressed: () {
                            setState(() {
                              checked2 = !checked2;
                              navigateTo(EducationView());
                            });
                          }, icon: Icon(Icons.arrow_forward))

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: checked3
                              ? Color(0xff84A9FF)
                              : Colors.white
                          ,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked3 = !checked3;
                                });
                              },
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: CheckMark(
                                  active: checked3,
                                  curve: Curves.decelerate,
                                  duration: const Duration(milliseconds: 500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Experience",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                              SizedBox(height: 4,),
                              Text("Enter your work experience to be considered by\n the recruiter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                            ],
                          ),
                          Spacer(),
                          IconButton(onPressed: () {
                            setState(() {
                              checked3 = !checked3;
                              navigateTo(ExperienceView());
                            });
                          }, icon: Icon(Icons.arrow_forward))

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: checked4
                              ? Color(0xff84A9FF)
                              : Colors.white
                          ,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked4 = !checked4;
                                });
                              },
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: CheckMark(
                                  active: checked4,
                                  curve: Curves.decelerate,
                                  duration: const Duration(milliseconds: 500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Portfolio",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                              SizedBox(height: 4,),
                              Text("Create your portfolio. Applying for various\n types of jobs is easier.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),)
                            ],
                          ),
                          Spacer(),
                          IconButton(onPressed: () {
                            setState(() {
                              checked4 = !checked4;
                              navigateTo(PortfolioView());
                            });
                          }, icon: Icon(Icons.arrow_forward))

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
