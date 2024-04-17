import 'package:flutter/material.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/toggle_button.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/splach/splach.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';
import 'package:jobsque/main/main/apply_job/job_details/components/descreption/page.dart';
import 'package:jobsque/main/main/apply_job/job_details/components/people/page.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'components/company/page.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            Spacer(),
            Text("Job Detail", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.data_saver_on_rounded),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            child: AppImage("Twitter.png",width: 66,height: 66,),
          ),
          SizedBox(height: 12,),
          Text("Senior UI Designer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
          SizedBox(height: 5,),
          Text("Twitter • Jakarta, Indonesia ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff374151)),),
         SizedBox(height: 16,),
          Row(children: [
           SizedBox(width: 145,),
            Container(child: Text("Fulltime",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.cyan)),
            SizedBox(width: 8,),

            Container(child: Text("Onsite",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.cyan),),
            SizedBox(width: 8,),
            Container(child: Text("Senior",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.cyan),),


          ],),
         SizedBox(height: 35,),
         Padding(
           padding:  EdgeInsets.only(left: 90,right: 70),
           child: Row(
             children: [
           Container(child: ToggleSwitch(
             initialLabelIndex: 0,
             totalSwitches: 3,
             labels: ['Desicription', 'Company', 'People'],
             onToggle: (index) {
               if(index == 0){navigateTo(DescriptionPage());
               };
               if(index==1){navigateTo(CompanyPage());};
               if(index==2){navigateTo(PeoplePage());};
             },
           ),),

               ],
           ),
         ),
      SizedBox(height: 300,),
      AppButton(text:
      "Apply now",
        onPress: () async {
          navigateTo(ApplyView());
        },

      ),

           ],
         ),


    ));}
}
