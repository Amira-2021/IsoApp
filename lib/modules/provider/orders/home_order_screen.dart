import 'package:flutter/material.dart';
import 'package:project_four/modules/provider/orders/order_screen.dart';
import 'package:project_four/modules/provider/setting/SettingScreenProvider.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

class HomeScreenProvider extends StatefulWidget {
  static const String routeName="homeprovider";
  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {

   List <Widget> screens=[OrderScreen(),SettingProvider()];
   int onTap=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[onTap],
      bottomNavigationBar:BottomNavigationBar(
         currentIndex: onTap,
        onTap: (click){
          onTap=click;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: ColorsManager.defaultColorGreen,
              icon: Icon(Icons.reorder),label: "Orders",),
          BottomNavigationBarItem(backgroundColor: ColorsManager.defaultColorGreen,
              icon: Icon(Icons.settings),label: "Settings"),
        ],
      ),
    );
  }

}
