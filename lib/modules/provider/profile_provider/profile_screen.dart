import 'package:flutter/material.dart';
import 'package:project_four/modules/first_screen/first_screen.dart';
import 'package:project_four/modules/provider/profile_provider/appointment_screen.dart';
import 'package:project_four/shared/component/components/bottons.dart';
import 'package:project_four/shared/component/components/containers_presse.dart';
import 'package:project_four/shared/component/components/icons.dart';
import 'package:project_four/shared/component/components/text.dart';

class ProfileOfProvider extends StatefulWidget {
  static const String routeName = "profileOfProvider";

  @override
  State<ProfileOfProvider> createState() => _ProfileOfProviderState();
}

class _ProfileOfProviderState extends State<ProfileOfProvider> {
  late DateTime selectedDate;
  int click=0;
  int followCount=0;
  List <String> listTime=[
    "09:00",
    "10:00",
    "11:00",
    "12:00",
    "01:00",
    "02:00",
    "02:00",
    "03:00",
  ];

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    selectedDate = DateTime.now().add(const Duration(days: 5));
  }
  bool clickFollow=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       leading:  BackArrow(context),
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(10, 10),
                      // inset: false,
                      color: Colors.green.shade100,
                      blurRadius: 50,
                      spreadRadius: 1),
                  BoxShadow(
                      offset: Offset(-10, -10),
                      // inset: false,
                      color: Colors.white,
                      blurRadius: 50,
                      spreadRadius: 1),
                ]),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assests/images/photo.jpg"),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 200,
                    child: MyTextStyle(text: "Amira Ahmed", fontSize: 22.0,align: TextAlign.center,lines: 1,color: Colors.black),
                  ),
                  Container(
                    width: 200,
                    child: MyTextStyle(text: "Electrical ", fontSize: 20.0,align: TextAlign.center,lines: 1,color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
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
                      }),
                 InkWell(
                   onTap: (){
                     clickFollow?
                     followCount=1:followCount=0;
                     clickFollow=false;
                     setState(() {

                     });
                     print(followCount);

                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 10),
                     height: 50,
                     width: 130,
                     decoration: BoxDecoration(
                       color: followCount!=1?Colors.red[100]:Colors.red[500],
                       borderRadius: BorderRadius.circular(25)
                     ),
                     child:MyTextStyle(text: "Following",align: TextAlign.center,fontSize: 23,color: Colors.black)
                   ),
                 ),
                  MyIcons(context: context,
                      color: Colors.yellow[800]!,
                      icon: Icons.call,
                      colorIcon: Colors.white,
                      function: (){
                        Navigator.pushNamed(context, FirstScreen.routeName);
                      }),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FollowTapsRow(title: "Followers",numOfFollow: "30+"),
                  SizedBox(width: 5,),
                  FollowTapsRow(title: "Exper.",numOfFollow: "3 Years"),
                  SizedBox(width: 5,),
                  FollowTapsRow(title: "Rating",numOfFollow: "300",),
                ],
              ),),
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
                      color: Colors.black
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Location",fontFamily: true ),
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
                    MyTextStyle(text: "Payment methods", fontFamily: true),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          payment("assests/images/visa.png"),
                          payment("assests/images/visa.png"),
                          payment("assests/images/visa.png"),
                          payment("assests/images/visa.png"),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   MyTextStyle(text: "Select Date",fontFamily: true ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.grey[100],
                      child: CalendarDatePicker(

                          initialDate: DateTime.now(),
                          firstDate: DateTime.now().subtract(Duration(days: 365)),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                          onDateChanged: (date){
                            print(date);
                          }
                      ),

                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Select Time", fontFamily: true),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 250,
                      child: GridView.builder(
                        padding:const EdgeInsets.all(10),
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          childAspectRatio: 17/6,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder:(context,index)=>TimeItem(item:listTime[index],index: index,function: clickFun),
                        itemCount: listTime.length,
                      ),
                    ),SizedBox(
                      height: 15,
                    ),
                   Center(child: Button(context: context, text: "Book Appointment", onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentScreen()));}, )),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

   clickFun(int clickItem)
  {
      setState(() {

      });


  }

}
