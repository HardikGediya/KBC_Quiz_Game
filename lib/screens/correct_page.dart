import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kbc_game/models/questions_models.dart';
import 'package:kbc_game/variable.dart';

class CorrectPage extends StatefulWidget {
  @override
  _CorrectPageState createState() => _CorrectPageState();
}

class _CorrectPageState extends State<CorrectPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/images/fire-cracker.png",
            ),
            width: 90,
          ),
          SizedBox(height: 20,),
          Text(
            "Your Answer is Correct",
            style: TextStyle(
              color: Color(0xffc78640),
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "You Won",
              style: TextStyle(
                color: Color(0xffc78640),
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Center(
            child: Text(
              "₹ $prize",
              style: TextStyle(
                color: Color(0xffc78640),
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 40,
            width: 170,
            child: ElevatedButton(
                onPressed: () {
                    ++currentindex;
                    if(currentindex == 0) mycolor = Colors.purpleAccent;
                    if(currentindex == 1) mycolor = Colors.indigo;
                    if(currentindex == 2) mycolor = Colors.redAccent;
                    if(currentindex == 3) mycolor = Colors.limeAccent;
                    if(currentindex == 4) mycolor = Colors.lightGreenAccent;
                    if(currentindex == 5) mycolor = Colors.lightBlueAccent;
                    if(currentindex == 6) mycolor = Colors.orange;
                    if(currentindex == 7) mycolor = Colors.blue;
                    if(currentindex == 8) mycolor = Colors.amberAccent;
                    if(currentindex == 9) mycolor = Colors.cyan;

                  setState(() {
                    if(currentindex <= 9)
                      {
                        Navigator.of(context).pushNamed("/");
                      }
                    else
                      {
                        Navigator.of(context).pushNamed("gameover_page");
                      }

                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Color(0xffd6d6d6),
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
