import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;
  final int totalScore;

  // ignore: use_key_in_widget_constructors
  const Result(this.resetQuiz, this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore >= 70) {
      resultText = 'You are awesome !';
    } else if (totalScore >= 40) {
      resultText = 'Pretty Likable !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$totalScore',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: isSwitched? Colors.white:Colors.black,
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched? Colors.white:Colors.black,
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text(
              'Restrat the APP',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
