import 'package:flutter/material.dart';
import 'package:kbc_game/screens/correct_page.dart';
import 'package:kbc_game/models/questions_models.dart';
import 'package:kbc_game/questions_bank.dart';
import 'package:kbc_game/screens/gameover_page.dart';
import 'package:kbc_game/screens/incorrect_page.dart';
import 'package:kbc_game/screens/question_option_page.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
         routes: {
           '/' : (context)=>  QuestionPage(),
           'correct_page' : (context)=>  CorrectPage(),
           'incorrect_page' : (context)=>  IncorrectPage(),
           'gameover_page' : (context)=> GameOverPage(),
         }
    ),
  );
}




