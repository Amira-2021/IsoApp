import 'package:flutter/material.dart';
import 'package:project_four/modules/first_screen/first_screen.dart';
import 'package:project_four/shared/component/components/containers_presse.dart';
import 'package:project_four/shared/component/components/icons.dart';
import 'package:project_four/shared/component/components/text.dart';

class ProfileScreenCustomer extends StatefulWidget {
  static const String routeName = "profileOfCustomer";

  @override
  State<ProfileScreenCustomer> createState() => _ProfileScreenCustomerState();
}

class _ProfileScreenCustomerState extends State<ProfileScreenCustomer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackArrow(context),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assests/images/photo.jpg"),
                ),
                Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 200,
                        child: MyTextStyle(text: "Amira Ahmed", fontSize: 22.0,align: TextAlign.center,lines: 1),
                      ),

                      Container(
                        width: 200,
                        child: MyTextStyle(text: "Luxor , Cairo", fontSize: 22.0,align: TextAlign.center,lines: 1),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyIcons(context: context,
                              color: Colors.green[800]!,
                              icon: Icons.chat_sharp,
                              colorIcon: Colors.white,
                              function: (){
                                Navigator.pushNamed(context, FirstScreen.routeName);
                              }
                          ),
                          MyIcons(context: context,
                              color: Colors.yellow[800]!,
                              icon: Icons.call,
                              colorIcon: Colors.white!,
                              function: (){
                                Navigator.pushNamed(context, FirstScreen.routeName);
                              }),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTextStyle(text: "About", fontSize: 25.0,fontFamily: true),
                            SizedBox(
                              height: 15,
                            ),
                            MyTextStyle(text:
                            "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "
                                "Amira Ahmed "

                                , fontSize: 19.0,
                                lines: 3,
                                color: Colors.black,bold: FontWeight.w500
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            MyTextStyle(text: "Location", fontFamily: true),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:Image.asset("assests/images/gps.jpg",fit: BoxFit.cover),
                            ),

                            SizedBox(
                              height: 15,
                            ),
                            MyTextStyle(text: "Payment methods",fontFamily: true ),
                            SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  payment("assests/images/visa.png"),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 200,
                              child: MyTextStyle(text: "Appointment",lines: 1,fontFamily: true),
                            ),

                            SizedBox(
                              height: 15,
                            ),
                            MyTextStyle(text: "Date :", color: Colors.black),

                            SizedBox(
                              height: 15,
                            ),

                            MyTextStyle(text: "Time : ",color: Colors.black ),
                            SizedBox(
                              height: 15,
                            ),

                          ],
                        ),
                      ),
                    ]
                ),
              ]
          )
      ));

  }

  }


