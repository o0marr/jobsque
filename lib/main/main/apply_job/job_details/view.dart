import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:jobsque/core/design/app_button.dart';
import 'package:jobsque/core/design/app_image.dart';
import 'package:jobsque/core/design/toggle_button.dart';
import 'package:jobsque/core/logic/helper_methods.dart';
import 'package:jobsque/main/auth/splach/splach.dart';
import 'package:jobsque/main/main/apply_job/apply/view.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/design/drop_down_button.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  List<String> items = [
    "Description",
    "Company",
    "People",
  ];
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }
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
        child: SingleChildScrollView(
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
          Container(
            padding: EdgeInsets.only(top: 32),
            child: FlutterToggleTab(
                width: 90,
                // width in percent
                borderRadius: 30,
                height: 50,
                selectedIndex: _currentPage,
                selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                unSelectedTextStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                labels: items,
                selectedLabelIndex: (index) {
                  setState(() {
                    _currentPage = index;
                    _pageController.animateToPage(_currentPage,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease);
                  });
                },
                isScroll: false),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 705,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Container(
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
                        SizedBox(height: 50,),
                        AppButton(text:
                        "Apply now",
                          onPress: () async {
                            navigateTo(ApplyView());
                          },

                        ),

                      ],),
                  ),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

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
                        SizedBox(height: 50,),
                        AppButton(text:
                        "Apply now",
                          onPress: () async {
                            navigateTo(ApplyView());
                          },

                        ),
                      ]),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("6 Employees For",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                Text("UI/UX Design",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xff6B7280)),),
                              ],
                            ),
                            SizedBox(width: 120,),
                            DropDownButtonView()
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          children: [
                            AppImage("Dimas.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Dimas Adi Saputro",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 28,),

                        Row(
                          children: [
                            AppImage("Syahrul.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Syahrul Ramadhani",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 28,),

                        Row(
                          children: [
                            AppImage("Farrel.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Farrel Daniswara",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("4 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 28,),

                        Row(
                          children: [
                            AppImage("Azzahra.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Azzahra Farrelika",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("4 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 28,),

                        Row(
                          children: [
                            AppImage("Dimas.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Dindra Desmipian",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("6 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 28,),

                        Row(
                          children: [
                            AppImage("Dimas.png",
                              width: 36,
                              height: 36,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Text("Ferdi Saputra",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Senior UI/UX Designer at Twitter",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                            ],),
                            SizedBox(width: 50,),

                            Column(children: [
                              Text("Work during",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6B7280)),),
                              Text("5 Years",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff3366FF)),),
                            ],),

                          ],
                        ),
                        SizedBox(height: 50,),
                        AppButton(text:
                        "Apply now",
                          onPress: () async {
                            navigateTo(ApplyView());
                          },

                        ),


                      ],
                    ),
                  ),
                ),


              ],
            )),



             ],
           ),
        ),


    ));}
}
