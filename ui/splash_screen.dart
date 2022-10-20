import 'dart:async';

import 'package:electronic_schedule/conts/colors.dart';
import 'package:electronic_schedule/ui/pages/signin_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Signin_page()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kmain_color,
        body: Center(
          child: Image(
            image: AssetImage('assets/images/logo_.png'),
          ),
        ));
  }
}
