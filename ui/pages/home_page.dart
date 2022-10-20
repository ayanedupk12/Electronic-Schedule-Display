import 'dart:ui';

import 'package:electronic_schedule/conts/colors.dart';
import 'package:flutter/material.dart';

import '../../conts/info.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.4,
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  // color: Colors.white.withOpacity(0.3)
                  gradient: RadialGradient(
                    radius: 0.8,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.blueAccent.withOpacity(0.5),

                    ]
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/2+10,),
                    Text(FullName,style: klargeAndBoldfont,),
                    SizedBox(height: 30,),
                    Text('University of Malakand',style: knormalfont,),
                    SizedBox(height: 10,),
                    Text('Department: $Department',style: knormalfont,),
                    SizedBox(height: 10,),
                    Text('Email: ayan.edu.pk12@gmail.com',style: knormalfont,),
                    SizedBox(height: 10,),
                    Text('Phone# $PhoneNumber',style: knormalfont,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/2-100,
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  border: Border.all(color: Colors.black,width: 4),
                  image: DecorationImage(
                    opacity: 0.5,
                      image: AssetImage('assets/images/poster.jpg'),
                      fit: BoxFit.cover
                  )
            ),
          ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/2-170,
                left: MediaQuery.of(context).size.width/2-70,
                child: Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.height/5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color: Colors.black,width: 4)
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pic.png'),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
