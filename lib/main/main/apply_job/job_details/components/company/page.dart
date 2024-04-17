import 'package:flutter/material.dart';

import '../../../../../../core/design/app_button.dart';
import '../../../../../../core/logic/helper_methods.dart';
import '../../../apply/view.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextFormField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
label: Text("Email",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextFormField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                        label: Text("Website",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Text("About Company",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: 24,),
            Text("Understanding Recruitment is an award-winning technology,\nsoftware and digital recruitment consultancy with \nheadquartersin St. Albans, Hertfordshire.We also have a US office in Boston,\nMassachusetts specialising in working closely with highly skilled\nindividuals seeking their next career move within Next Gen Tech,\nBackend Engineering, and Artificial Intelligence.We recently\ncelebrated our first decade in business and over the years\nhave been recognised with several industry awards including 'Best\nStaffing Firm to Work For 2018'​ at the SIA Awards for the third\nconsecutive year and ‘Business of the Year 2017’ at the SME\nHertfordshire Business Awards.Our teams of specialists \noperateacross all areas of Technology and Digital, \nincluding Java,JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence,\nMachine Learning, AI, Digital, Quantum Computing, \nHardware Acceleration,Digital, Charity, Fintech, and the Public Sector.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
            SizedBox(height: 100,),
            AppButton(text:
            "Apply now",
              onPress: () async {
                navigateTo(ApplyView());
              },

            ),
          ],
        ),
      )),
    );
  }
}
