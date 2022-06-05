import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kbc_game/models/questions_models.dart';

import '../variable.dart';

class IncorrectPage extends StatefulWidget {
  @override
  _IncorrectPageState createState() => _IncorrectPageState();
}

class _IncorrectPageState extends State<IncorrectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/images/lose (1).png",
            ),
            width: 90,
          ),
          SizedBox(height: 25,), 
          Text(
            "oops!",
            style: TextStyle(
              color: Color(0xffd4d4ff),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Sorry You are",
              style: TextStyle(
                color: Color(0xffd4d4ff),
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Center(
            child: Text(
              "the lose",
              style: TextStyle(
                color: Color(0xffd4d4ff),
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
                    currentindex = 0;
                  setState(() {
                    Navigator.of(context).pushNamed("/");
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
                child: Text(
                  "Try again",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
