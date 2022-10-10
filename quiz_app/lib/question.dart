import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final states that the value will never change after the initialization of the constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //container wraps the text widget so that it is its child widget
    return Container(
        width: double
            .infinity, //double.infinity ensures that the size gets what it needs
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
