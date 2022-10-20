import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../conts/colors.dart';

class Message_send extends StatefulWidget {
  const Message_send({Key? key}) : super(key: key);

  @override
  State<Message_send> createState() => _Message_sendState();
}

class _Message_sendState extends State<Message_send> {
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 350,
                        child: TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(

                            disabledBorder: OutlineInputBorder(),
                            fillColor: Colors.black.withOpacity(0.3),
                            filled: true,
                            hintText: 'Enter Message',
                            hintStyle: TextStyle(color: Colors.white)

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(50),
                              gradient: RadialGradient(radius: 20, colors: [
                                Colors.white.withOpacity(0.3),
                                kmain_color.withOpacity(0),
                              ]),
                              boxShadow: [
                                BoxShadow(
                                  color: kmain_color.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 9,
                                  offset: Offset(1, 3),
                                )
                              ]),
                          child: Center(
                            child: SizedBox(width: 100,
                              child: ListTile(
                                leading: Text('Send',style: knormalfont,),
                                trailing: Icon(Icons.send_rounded,color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
