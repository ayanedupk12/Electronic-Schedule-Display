
import 'package:electronic_schedule/conts/colors.dart';
import 'package:flutter/material.dart';

class Profile_button extends StatelessWidget {
 double width_l;
  String title;
  Icon icon_l;
  Profile_button({
    Key? key,
    required this.width_l,
    required this.title,
    required this.icon_l
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: width_l,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topRight: Radius.circular(15)),
          gradient: RadialGradient(
              radius: 8,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0),
              ]
          )
      ),
      child: ListTile(
        leading: Text(title,style: knormalfont,),
        trailing: icon_l,
      ),
    );
  }
}



