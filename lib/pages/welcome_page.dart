import 'package:flutter/material.dart';
import 'home.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Image.asset(
          'assets/two.jpg',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // where the linear gradient begins and ends
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                // Add one stop for each color. Stops should increase from 0 to 1
                colors: [
                  Colors.black.withOpacity(1),

                  Colors.black.withOpacity(0.9),

                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.025),
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Smart Medical Assistant",
              textScaleFactor: 1,
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                ),
            ),

            SizedBox(
              height: 5,
            ),

             Text(
               "We assist the school clinic doctors and nurses by \n  providing basic patient care medical assistants \n are the heart of patient relations.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),
            ),

            SizedBox(
              height: 20,
            ),

          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Home( )));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 40,
          )
        ],
        ),
      ],
      ),
      
    );
  }
}