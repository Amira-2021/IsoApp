import 'package:flutter/material.dart';
import 'package:project_four/modules/login/customer/UserLoginCustomer.dart';
import 'package:project_four/modules/login/provider/UserLoginProvider.dart';
import 'package:project_four/shared/component/components/text.dart';

import '../../shared/component/components/bottons.dart';
class FirstScreen extends StatefulWidget {
  static const String routeName="splash";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:40),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(50),
                child:const CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage("assests/images/logo.png",),
                ),
              ),

              Container(
                child: Column(
                  children: [
                    MyTextStyle(text: "Quick Services App",fontSize: 25.0,color: Colors.black),
                    SizedBox(height: 20,),
                    MyTextStyle(text: "Select Your Role",color: Colors.black),
                    SizedBox(height: 50,),
                    Button(text: "Sgin As Customer",height: 55 ,onPressed: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreenCustomer()));
                    }, context: context),
                    SizedBox(height: 20,),
                    MyTextStyle(text: "Or",color: Colors.black),
                    SizedBox(height: 25,),
                   Button(text: "Sgin As Provider",height: 55,
                       onPressed: (){
                         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreenProvider()));
                    }, context: context),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

 
}



