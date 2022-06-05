import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kbc_game/models/questions_models.dart';

import '../variable.dart';

class GameOverPage extends StatefulWidget {
  @override
  _GameOverPageState createState() => _GameOverPageState();
}

class _GameOverPageState extends State<GameOverPage> {
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
          SizedBox(height: 10,),
          Text(
            "Congratulations",
            style: TextStyle(
              color: Colors.white30,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Game over",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          SizedBox(
            height: 60,
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
                  primary: Colors.white12,
                  onPrimary: Colors.white,
                ),
                child: Text(
                  "Restart",
                  style: TextStyle(
                    color: Colors.white,
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
