import 'package:flutter/material.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';

import '../../../../../../core/design/app_button.dart';
import '../../../../../../core/logic/helper_methods.dart';


class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 25,),
                Text("Job Description"),
                Text("Your role as the UI Designer is to use interactive components on\nvarious platforms (web, desktop and mobile). This will include\nproducing high-fidelity mock-ups, iconography, UI illustrations/\ngraphics, and other graphic elements. As the UI Designer, you\nwill be supporting the wider design team with the internal\nDesign System, tying together the visual language. You will with\nother UI and UX Designers, Product Managers, and Engineering\nteams in a highly customer-focused agile environment to help\ndefine the vision of the products."),
                SizedBox(height: 15,),
                Text("Skill Required"),
                Text("A strong visual portfolio with clear understanding of UI\nmethodologies"),
                Text("Ability to create hi-fidelity mock-ups in Figma"),
                Text("Ability to create various graphics for the web e.g. illustrations and\nicons"),
                Text("Able to facilitate workshops and liaise with stakeholders"),
                  Text("Proficiency in the Adobe Creative Suite"),
                  Text("Confident communicator with an analytical mindset"),
                  Text("Design library/Design system experience"),
                  Text("4+ years of commercial experience in UI/Visual Design"),
                  SizedBox(height: 140,),
                  AppButton(text:
                  "Apply now",
                    onPress: () async {
                      navigateTo(ApplyView());
                    },

                  ),

              ],),
            ),
          ),
        ),
      ),
    );
  }
}
