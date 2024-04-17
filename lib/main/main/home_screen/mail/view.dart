import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:jobsque/core/design/app_image.dart';

import '../../../../core/logic/helper_methods.dart';
import '../messages/archive/view.dart';



class MailView extends StatefulWidget {
  const MailView({Key? key}) : super(key: key);

  @override
  State<MailView> createState() => _MailViewState();
}

class _MailViewState extends State<MailView> {
  List<Message>message=[
    Message(

      date:DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe:false,
      text: "Hi Rafif!, I'm Melan the selection team\nfrom Twitter. Thank you for applying for a\njob at our company. We have announced\nthat you are eligible for the interview\nstage.",
    ),
    Message(
    text: "Hi Melan, thank you for considering\nme,this is good news for me.",
      date:DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe:true,
    ),
    Message(
      text: "Can we have an interview via google meet\ncall today at 3pm?",
      date:DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe:false,
    ),
    Message(
      text: "Of course, I can!",
      date:DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe:true,
    ),
    Message(
      text: "Ok, here I put the google meet link for later\n this afternoon. I ask for the timeliness,\n thank you!\n https://meet.google.com/dis-sxdu-ave",
      date:DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe:false,
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          AppImage("Twitter.png",width: 36,height: 36,fit: BoxFit.scaleDown),
          SizedBox(width:10 ,),
          Text("Twitter",style: TextStyle(color: Colors.black),),
          Spacer(),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.more_horiz_outlined))
        ]),

      ),
      body: Column(
        children: [
          Expanded(child: GroupedListView(
              padding: EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: message,
            groupBy: (Message) => DateTime(Message.date.year,
            Message.date.month,
              Message.date.day
            ),

            groupHeaderBuilder: (Message) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(padding: EdgeInsets.all(8),
                  child: Text(
                    DateFormat.yMMMd().format(Message.date),
                    style: const TextStyle(color: Colors.white ),
                  ),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Message) =>Align(
              alignment:Message.isSentByMe?
              Alignment.centerRight:Alignment.centerLeft,
              child: Card(
                elevation: 8,
                color: Colors.blue,
                child: Padding(padding: EdgeInsets.all(12),
                child: Text(Message.text),
                ),
              ),
            )
          )),
          Container(
            color: Colors.grey.shade300,
            child: Row(
              children: [
                IconButton(onPressed: () {
                  showModalBottomSheet(context: context, builder: (context) {
                    return ListView.separated(itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(children: [
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("briefcase.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Visit job post",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("note.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("View my application",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("sms2.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Mark as unread",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("notification.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Mute",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("import.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Archive",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 327,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  100),
                              color: Color(0xffD1D5DB)),
                          child: Row(
                            children: [
                              SizedBox(width: 14,),
                              AppImage("trash.png",height: 24,width: 24,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Delete conversation",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              IconButton(
                                  onPressed: () {

                                  },
                                  icon: Icon(Icons
                                      .arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                      ]),
                    ), separatorBuilder: (context, index) =>SizedBox(height: 200,) , itemCount: 1);
                  },);
                }, icon: Icon(Icons.attachment_rounded)),
                Container(
                  width: 315,
                  height: 42,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: "Type your message here"
                    ),
                    onSubmitted: (text) {
                      final message=Message(text: text, date: DateTime.now(), isSentByMe: true);

                    },
                  ),
                ),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.keyboard_voice))
              ],
            ),

          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;


  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,

});
}
