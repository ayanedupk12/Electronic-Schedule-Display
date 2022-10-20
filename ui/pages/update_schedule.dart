import 'dart:ui';

import 'package:flutter/material.dart';

class Update_Schadule extends StatefulWidget {
  const Update_Schadule({Key? key}) : super(key: key);

  @override
  State<Update_Schadule> createState() => _Update_SchaduleState();
}

class _Update_SchaduleState extends State<Update_Schadule> {
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
              ),
            ],
          ),
        )
    );
  }
}
