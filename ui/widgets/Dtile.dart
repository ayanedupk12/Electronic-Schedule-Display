import 'package:flutter/material.dart';

class Tile_ extends StatelessWidget {
  Icon icon;
  String title;
  final VoidCallback onpressed;

  Tile_(
      {Key? key,
      required this.onpressed,
      required this.title,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap: onpressed,
        leading: icon,
        title: Text(title),
      ),
    );
  }
}
