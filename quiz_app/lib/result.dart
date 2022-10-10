import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

//getter
  String get resultPhrase {
    var resText = 'You did it!';
    if (resultScore == 30) {
      resText = 'Great choices!!';
    } else if (resultScore < 30 && resultScore > 10) {
      resText = 'Good choices!!';
    } else {
      resText = 'What were those?';
    }

    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
    );
  }
}
