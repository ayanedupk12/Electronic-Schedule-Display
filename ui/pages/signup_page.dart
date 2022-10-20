import 'dart:io';
import 'dart:ui';
import 'package:electronic_schedule/conts/colors.dart';
import 'package:electronic_schedule/ui/pages/page_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../conts/info.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  @override
  FirebaseAuth _auth = FirebaseAuth.instance;


  //controllers
  final cFullName= TextEditingController();
  final cEmail= TextEditingController();
  final cDepartment= TextEditingController();
  final cPassword= TextEditingController();
  final cConfirmPassword= TextEditingController();
  final cphoneNumber= TextEditingController();


  bool loading = false;
  var DDvalue = 'Mr';
  File? _image;
  Future getImage(imageSource)async{
    final image = await ImagePicker().pickImage(source: imageSource);
    if(image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        _image != null ? Image.file(_image!,width: 100,height: 100,) : Image.asset('assets/images/pic.png',height: 100,width: 100,),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            getImage(ImageSource.camera);
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(50),
                                gradient: RadialGradient(radius: 20, colors: [
                                  kmain_color,
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
                                  'Camera',
                                  style: GoogleFonts.inter(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            getImage(ImageSource.gallery);
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(50),
                                gradient: RadialGradient(radius: 20, colors: [
                                  kmain_color,
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
                                  'Gallery',
                                  style: GoogleFonts.inter(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          'Personal Info',
                          style: klargeAndBoldfont,
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3)
                              ),
                              child: DropdownButton<String>(
                                  value: DDvalue,
                                  icon: Icon(Icons.arrow_downward),
                                  items: <String>['Mr', 'Mrs', 'Dr', 'Prof', 'Lec']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  onChanged: (value) {
                                    DDvalue = value!;
                                    setState(() {});
                                  }),
                            ),
                            Spacer()
                          ],
                        ),
                        Form(
                          key: formkey,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cFullName,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                            borderSide: BorderSide(color: kmain_color)
                                        ),
                                        fillColor: Colors.white.withOpacity(0.3),
                                        filled: true,
                                        hintText: 'Full Name'),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter Full Name';
                                      }
                                      return null;
                                    },
                                  ), //full name
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cEmail,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: kmain_color)
                                      ),
                                      hintText: 'Email',
                                      fillColor: Colors.white.withOpacity(0.3),
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter Email';
                                      }
                                      return null;
                                    },

                                  ), //email
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cDepartment,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: kmain_color)),
                                      hintText: 'Department',
                                      fillColor: Colors.white.withOpacity(0.3),
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter Department name';
                                      }
                                      return null;
                                    },
                                  ), // department
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cPassword,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: kmain_color)),
                                      hintText: 'Password',
                                      fillColor: Colors.white.withOpacity(0.3),
                                      filled: true,),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter Password';
                                      }
                                      return null;
                                    },
                                  ), //password
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cConfirmPassword,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: kmain_color)),
                                      hintText: 'Confirm Password',
                                      fillColor: Colors.white.withOpacity(0.3),
                                      filled: true,),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Confirm your Password';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: cphoneNumber,
                                    maxLength: 11,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                          borderSide: BorderSide(color: kmain_color)),
                                      hintText: 'Phone Number',
                                      fillColor: Colors.white.withOpacity(0.3),
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                        ),
                        // phone//confirm password
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if(formkey.currentState!.validate()){
                              if(cPassword.text==cConfirmPassword.text){
                                _auth.createUserWithEmailAndPassword(
                                    email: cEmail.text.toString(),
                                    password: cPassword.text.toString());
                                FullName = cFullName.text.toString();
                                PhoneNumber = cphoneNumber.text.toString();
                                Department = cDepartment.text.toString();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Page_Controller()));
                              }else{
                                return null;
                              }

                            }

                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(50),
                                gradient: RadialGradient(radius: 20, colors: [
                                  kmain_color,
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
                                  'Sign up',
                                  style: GoogleFonts.inter(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Already have an account"),
                            TextButton(onPressed: (){
                             Navigator.pop(context);
                            }, child: Text('Sign in'))
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
    );
  }
}
