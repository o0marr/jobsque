import 'package:flutter/material.dart';


class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms & Conditions",
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
              Text("Lorem ipsum dolor",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              SizedBox(height: 12,),
              Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nam vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Nam vel augue sit amet est\n molestie viverra. Nunc quis bibendum orci. Donec\n feugiat massa mi, at hendrerit mauris rutrum at. Lorem\n ipsum dolor sit amet, consectetur adipiscing elit. Nam\n vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 17,),
              Text("Lorem ipsum dolor",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              Text("Nunc quis bibendum orci. Donec feugiat massa mi, at\n hendrerit mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 12,),
              Container(
                height: 144,
                width: 327,
                color: Color(0xffF4F4F5),
                padding: EdgeInsets.only(right:14 ,top:12 ,left: 14,bottom:12 ,),
                child: Text("Nunc quis bibendum orci. Donec feugiat massa\n mi, at hendrerit mauris rutrum at. Lorem ipsum\n dolor sit amet, consectetur adipiscing elit. Nam vel\n augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at\n hendrerit mauris rutrum at. ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              ),
              SizedBox(height: 12,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nam vel augue sit amet est molestie viverra. Nunc quis\n bibendum orci. Donec feugiat massa mi, at hendrerit\n mauris rutrum at. ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 12,)
            ],
          ),
        ),
      ),
    );
  }
}
