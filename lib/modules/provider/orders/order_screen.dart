import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_four/modules/provider/orders/order_item.dart';
import 'package:project_four/shared/component/components/icons.dart';
import 'package:project_four/shared/component/components/text.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

class OrderScreen extends StatefulWidget {
  static const String routeName="service";
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List <Widget> item=[
    OrderItem(),
    OrderItem(),
    OrderItem(),
    OrderItem(),
  ];
  bool isNoOrder=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:MyTextStyle(text: "Orders List",color: ColorsManager.defaultColorGreen,fontFamily:true),
      ),
      body:isNoOrder?ListView.builder(
        itemBuilder: (context,index)=>item[index],
        itemCount: item.length,
      ):Container(

        color: Colors.green[100],
        child: Center(child:MyTextStyle(text: "   Don't Worry! \nResaak Maogod",fontSize: 35,color: ColorsManager.defaultColorYellow)),

      )

    );
  }

  }

