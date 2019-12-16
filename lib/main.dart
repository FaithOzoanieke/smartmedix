import 'package:flutter/material.dart';
import 'package:smart_medix/pages/welcome_page.dart';


void main() => runApp(SmartMedix(
 
));
 
class SmartMedix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}