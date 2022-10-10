import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  //runApp is a function provided by flutter that takes a widget as an instance of object
  //here the instance of object is MyApp
  runApp(MyApp());
}

// a widget is a special kind of object so we create a class representing the widget

//StatelessWidget is a base class of material.dart
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//state is a generic class
//we dont need to change the state all the time i.e it is not recreated
//only when the external data changes we recreate the widget
//the <MyApp> tells the compiler that the MyAppState is the part of the MyApp Widget
class MyAppState extends State<MyApp> {
  static const questions = [
    //creating map aka python's dict type
    {
      'questionText': 'What\'s your favorite Theme?',
      'answer': [
        {'text': 'Pitch Black', 'score': 7},
        {'text': 'Monkai Dimmed', 'score': 4},
        {'text': 'Night Owl', 'score': 10},
        {'text': 'Light', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your current IDE?',
      'answer': [
        {'text': 'Visual Studio Code', 'score': 10},
        {'text': 'Atom', 'score': 5},
        {'text': 'VIM', 'score': 7},
        {'text': 'Notepad++', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s you favorite language?',
      'answer': [
        {'text': 'C++', 'score': 9},
        {'text': 'Python', 'score': 10},
        {'text': 'Java', 'score': 8},
        {'text': 'Javascript', 'score': 8}
      ]
    }
  ];
  var questionIndex = 0;
  var totalScore = 0;
  //onPressed takes a function
  //this is the function for onPressed
  void answerQuestion(int Score) {
    totalScore += Score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
      print('we have more questions');
    }
    print('the button is pressed');
  }

  //build is a method that returns a Widget with BuildContext as a parameter and a context which holds meta info about the widget
  @override //makes it clear that we are diliberately overriding the build method with our own implementation
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //Scaffold is a widget
          //AppBar is a widget
          appBar: AppBar(
            title: Text('Flutter App'),
          ), //Text is a widget
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                )
              : Result(totalScore)),
    );
  }
}
