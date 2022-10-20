import 'dart:ui';

import 'package:electronic_schedule/conts/colors.dart';
import 'package:electronic_schedule/ui/pages/page_controller.dart';
import 'package:electronic_schedule/ui/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin_page extends StatefulWidget {
  const Signin_page({Key? key}) : super(key: key);

  @override
  State<Signin_page> createState() => _Signin_pageState();
}

class _Signin_pageState extends State<Signin_page> {
  @override
  final formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },

      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover
                )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 60),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/poster.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(child: Text('Electrinic Scheduale Display',style: GoogleFonts.inter(fontSize: 12,color: Colors.white),),),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/3,),
                        SizedBox(width: 300,
                          child: Column(
                            children: [
                              Form(
                                key: formkey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: emailcontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                              borderSide: BorderSide(color: Colors.black,width: 5),),
                                            fillColor: Colors.white.withOpacity(0.3),
                                            filled: true,
                                            hintText: 'Email'),
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'Enter Email';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 20,),
                                      TextFormField(
                                        obscureText: true,
                                        controller: passwordcontroller,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                              borderSide: BorderSide(color: Colors.black,width: 5),),
                                            fillColor: Colors.white.withOpacity(0.3),
                                            filled: true,
                                            hintText: 'Password'),
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'Enter Password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                        ),
                        InkWell(
                          onTap: () {
                            if(formkey.currentState!.validate()){

                            }
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Page_Controller()));
                          },
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
                                child: Text(
                                  'Sign in',
                                  style: GoogleFonts.inter(
                                    color: kmain_color,
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have an account"),
                            TextButton(onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup_page()));
                            }, child: Text('Sign up'))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}
