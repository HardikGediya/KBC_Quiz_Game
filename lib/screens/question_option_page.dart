
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kbc_game/models/questions_models.dart';

import '../main.dart';
import '../questions_bank.dart';
import '../variable.dart';

class QuestionPage extends StatefulWidget {


  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Expanded(
          child: Container(
            color: mycolor,
            child: IndexedStack(
              index: currentindex,
              alignment: Alignment.center,
              children: question
                  .map(
                    (e) => displayQuestion(e),
              )
                  .toList(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Color(0xff000000),
            child: IndexedStack(
              index: currentindex,
              alignment: Alignment.center,
              children: options
                  .map(
                    (e) => displayOptions(e),
              )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget displayQuestion(Questions q) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            q.que,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Roboto Regular',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget displayOptions(Options o) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    setState(() {
                      if(o.ans == o.opA) {
                        if(currentindex==0) prize = 1000;
                        if(currentindex==1) prize = 2000;
                        if(currentindex==2) prize = 3000;
                        if(currentindex==3) prize = 5000;
                        if(currentindex==4) prize = 10000;
                        if(currentindex==5) prize = 20000;
                        if(currentindex==6) prize = 40000;
                        if(currentindex==7) prize = 80000;
                        if(currentindex==8) prize = 160000;
                        if(currentindex==9) prize = 320000;
                        Navigator.of(context).pushNamed("correct_page",);
                      }
                      else{
                        Navigator.of(context).pushNamed("incorrect_page",);
                      }
                    });
                  });
                },
                child: Text(
                  o.opA,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    setState(() {
                      if(o.ans == o.opB) {
                        if(currentindex==0) prize = 1000;
                        if(currentindex==1) prize = 2000;
                        if(currentindex==2) prize = 3000;
                        if(currentindex==3) prize = 5000;
                        if(currentindex==4) prize = 10000;
                        if(currentindex==5) prize = 20000;
                        if(currentindex==6) prize = 40000;
                        if(currentindex==7) prize = 80000;
                        if(currentindex==8) prize = 160000;
                        if(currentindex==9) prize = 320000;
                        Navigator.of(context).pushNamed("correct_page");
                      }
                      else{
                        Navigator.of(context).pushNamed("incorrect_page",);
                      }
                    });
                  });
                },
                child: Text(
                  o.opB,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  if(currentindex==0) prize = 1000;
                  if(currentindex==1) prize = 2000;
                  if(currentindex==2) prize = 3000;
                  if(currentindex==3) prize = 5000;
                  if(currentindex==4) prize = 10000;
                  if(currentindex==5) prize = 20000;
                  if(currentindex==6) prize = 40000;
                  if(currentindex==7) prize = 80000;
                  if(currentindex==8) prize = 160000;
                  if(currentindex==9) prize = 320000;
                  setState(() {
                    setState(() {
                      if(o.ans == o.opC) {
                        Navigator.of(context).pushNamed("correct_page",);
                      }
                      else{
                        Navigator.of(context).pushNamed("incorrect_page",);
                      }
                    });
                  });
                },
                child: Text(
                  o.opC,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  if(currentindex==0) prize = 1000;
                  if(currentindex==1) prize = 2000;
                  if(currentindex==2) prize = 3000;
                  if(currentindex==3) prize = 5000;
                  if(currentindex==4) prize = 10000;
                  if(currentindex==5) prize = 20000;
                  if(currentindex==6) prize = 40000;
                  if(currentindex==7) prize = 80000;
                  if(currentindex==8) prize = 160000;
                  if(currentindex==9) prize = 320000;
                  setState(() {
                    if(o.ans == o.opD) {
                         Navigator.of(context).pushNamed("correct_page",);
                      }
                    else{
                      Navigator.of(context).pushNamed("incorrect_page",);
                    }
                  });
                },
                child: Text(
                  o.opD,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e1f23),
                  onPrimary: Color(0xffa8a8a9),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


