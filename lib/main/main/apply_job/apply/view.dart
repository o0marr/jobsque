import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/file_picker.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/features/main/my_account/profile/add_portfolio/bloc.dart';
import 'package:jobsque/features/main/my_account/profile/biodata/bloc.dart';
import 'package:jobsque/main/main/apply_job/upload_profile/view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/design/app_input.dart';

class ApplyView extends StatefulWidget {
  const ApplyView({Key? key}) : super(key: key);

  @override
  State<ApplyView> createState() => _ApplyViewState();
}

class _ApplyViewState extends State<ApplyView> {
  int currentStep = 0;
  int _value = 0;
  bool? isChecked =false;
  bool? isChecked2 =false;
  bool firstSubmitted = false;
  bool secondSubmitted = false;
  bool thirdSubmitted = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Apply Job"),
        centerTitle: true,
      ),
      body: Form(
        child: SizedBox(
          child: Stepper(


            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: currentStep,

            onStepContinue: () {
              final isLastStep = currentStep==getSteps().length-1;
              if(isLastStep){
                print("Completed");
              }else{
                setState(() => currentStep += 1,);
              };

            },
            onStepTapped: (step) =>setState(() => currentStep=step,),
            onStepCancel: () {
              currentStep == 0 ? null:  setState(() => currentStep -= 1,);

            },
            controlsBuilder: (context, onStepContinue) {
              return Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(children: [
                  Expanded(child: ElevatedButton(onPressed:() {
                    final isLastStep = currentStep==getSteps().length-1;
                    if(isLastStep){
                      print("Completed");
                      navigateTo(UploadProfileView());
                    }else{
                      setState(() => currentStep += 1,);
                    };
                  },  child: Text("Next")))
                ]),
              );
            },

          ),
        ),
      ),
    );
  }

  List <Step> getSteps() =>
      [
        Step(
          state: currentStep>0? StepState.complete:StepState.indexed,
          isActive: currentStep>=0,
            title: Text("Biodata"),
            content: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Biodata",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("Fill in your bio data correctly",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                    AppInput(
                      controller:TextEditingController() ,
                      label: "Full Name",
                      inputType: TextInputType.text,
                      prefixIcon: "profile.png",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    AppInput(
                        label: "Email",
                        controller:TextEditingController(),
                        inputType: TextInputType.text,
                        prefixIcon: "sms.png"),
                    SizedBox(
                      height: 16.h,
                    ),
                    AppInput(
                        label: "No.Handphone",
                        controller:TextEditingController(),
                        inputType: TextInputType.phone,
                        prefixIcon: "FLAG.png"),

                  ],
                ),
              ),
            )),
        Step(
            state: currentStep>1? StepState.complete:StepState.indexed,

            isActive: currentStep>=1,
            title: Text("Type of work"),
            content:  SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 24,right: 12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [


                  Text(
                    "Type of work",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Fill in your bio data correctly",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 327,
                    height: 81,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color(0xffD1D5DB),
                          style: BorderStyle.solid,
                          width: 1
                      ),

                    ),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Senior UX Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                            Text("CV.pdf : Portfolio.pdf", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
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
                        Column(

                          children: [
                            Text("Senior UI Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                            Text("CV.pdf : Portfolio.pdf", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
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
                        Column(
                          children: [
                            Text("Graphik Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                            Text("CV.pdf : Portfolio.pdf", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Radio(
                          value: 3,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 330,
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
                        Column(
                          children: [
                            Text("Front-End Developer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                            Text("CV.pdf : Portfolio.pdf", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Radio(
                          value: 4,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                ]),
              ),
            ),),
        Step(
            state: currentStep>3? StepState.complete:StepState.indexed,

            isActive: currentStep>=2,
            title: Text("Upload profile"),
            content: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 24,right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Upload portfolio",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                    Text("Fill in your bio data correctly",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),),
                    SizedBox(height: 28,),
                    Text("Upload CV*", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                    SizedBox(height: 12,),
                    Container(
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
                    SizedBox(height: 20,),
                    Text("Other File", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

                    Container(
                      width: 327,
                      height: 221,
                      child:  UploadPDFScreen()
                    ),
                  ],
                ),
              ),
            )),
      ];
}
class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        child: Container(
          height: 180.h,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          color: Colors.grey.withOpacity(.6),
        ),
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.white,
      ),
    );
  }
}
