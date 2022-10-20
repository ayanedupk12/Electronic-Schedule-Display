import 'package:electronic_schedule/conts/colors.dart';
import 'package:electronic_schedule/ui/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';
class Personal_Info extends StatefulWidget {
  const Personal_Info({Key? key}) : super(key: key);

  @override
  State<Personal_Info> createState() => _Personal_InfoState();
}

class _Personal_InfoState extends State<Personal_Info> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                )
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.white,
                    Colors.black
                  ]
                )
              ),

            ),
            Positioned(
              top: 50,
                left: -150,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/poster.jpg'),
                      fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 30,
                        spreadRadius: 20

                      )
                    ]
                  ),

                )),
            Positioned(
              top: 150,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.4,
                          image: AssetImage('assets/images/poster.jpg'),
                          fit: BoxFit.cover,
                      ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(100))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Profile_button(width_l: 200, title: 'Change Name', icon_l: Icon(Icons.drive_file_rename_outline)),
                                SizedBox(height: 20,),
                                Profile_button(width_l: 200, title: 'Department', icon_l: Icon(Icons.drive_file_rename_outline))
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Center(child: Icon(Icons.drive_file_rename_outline,color: Colors.white,size: 60,),),
                            ),
                            SizedBox(width: 20,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 30,
                        child: Center(child: Text('  Additional information',style: klargefont,)),),
                        SizedBox(height: MediaQuery.of(context).size.height/3+100,
                          child: ListView(
                            children: [
                              Profile_button(width_l: 300, title: 'Add Achievments', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Designition', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Phone#', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Phone#', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Phone#', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Phone#', icon_l: Icon(Icons.drive_file_rename_outline)),
                              SizedBox(height: 20,),
                              Profile_button(width_l: 300, title: 'Phone#', icon_l: Icon(Icons.drive_file_rename_outline)),

                            ],
                          ),
                        )



                      ],
                    ),
                  ),
                )
            ),



          ],
        );
  }
}
