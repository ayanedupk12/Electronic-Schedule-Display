import 'package:electronic_schedule/conts/colors.dart';
import 'package:electronic_schedule/ui/pages/home_page.dart';
import 'package:electronic_schedule/ui/pages/message_send.dart';
import 'package:electronic_schedule/ui/pages/personal_info.dart';
import 'package:electronic_schedule/ui/pages/update_schedule.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Page_Controller extends StatefulWidget {
  const Page_Controller({Key? key}) : super(key: key);

  @override
  State<Page_Controller> createState() => _Page_ControllerState();
}

class _Page_ControllerState extends State<Page_Controller> {
  @override
  var currentindex = 0;
  List pages = [Home_Page(), Update_Schadule(), Message_send(), Personal_Info()];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentindex,
        selectedColorOpacity: 0.2,
        onTap: (i) => setState(() => currentindex = i),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.teal,
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined), title: Text('Home')),
          SalomonBottomBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Schedule')),
          SalomonBottomBarItem(
              icon: Icon(Icons.send_outlined), title: Text('Notice')),
          SalomonBottomBarItem(
              icon: Icon(Icons.account_circle_outlined),
              title: Text('Profile')),
        ],
      ),
      body: SafeArea(
        child: pages[currentindex],
      )
      );
  }
}
//