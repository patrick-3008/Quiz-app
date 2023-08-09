import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

bool isSwitched = false;

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final List<Map<String, Object>> _question = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40}
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ]
    },
    {
      'questionText': "What's your favorite instructor?",
      'answers': [
        {'text': 'Patrick1', 'score': 10},
        {'text': 'Patrick2', 'score': 20},
        {'text': 'Patrick3', 'score': 30},
        {'text': 'باتريك', 'score': 40}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App',
              style:
                  TextStyle(color: isSwitched ? Colors.black : Colors.white)),
          actions: <Widget>[
            Switch(
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
              activeColor: Colors.white,
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ],
        ),
        body: Container(
          color: isSwitched ? Colors.black : Colors.white,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
