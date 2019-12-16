import 'package:flutter/material.dart';

class IconCard extends StatelessWidget{
  final IconData iconData;
  final String text;
  final VoidCallback onPressed;

  IconCard({this.iconData, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child:  Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(10)
            ),
            child: IconButton(icon: Icon(iconData, size: 30, color: Colors.red[400],), onPressed: onPressed, ),
          ),
          Text(text, style: TextStyle(fontSize: 10),)

        ],
        ),
    );
  }
}