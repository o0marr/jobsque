import 'package:flutter/material.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends State<HelpCenterView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help Center ",
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
                height: 48,
                width: double.infinity,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Type something...",
                      labelText: "What can we help?",
                      prefixIcon: Icon(Icons.search_sharp),
                      prefixIconColor: Colors.black),
                )),
            SizedBox(
              height: 28,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpansionTile(
              title: Text("The customer is very happy"),
              children: [
                ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Fusce ultricies mi enim, quis vulputate nibh\n faucibus at. Maecenas est ante, suscipit vel sem\n non, blandit blandit erat. Praesent pulvinar ante et\n felis porta vulputate. Curabitur ornare velit nec\n fringilla finibus. Phasellus mollis pharetra ante, in\n ullamcorper massa ullamcorper et. Curabitur ac leo\n sit amet leo interdum mattis vel eu mauris.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ],
            ),

          ],
        ),
      )),
    );
  }
}
