import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  final String questiontext;

  // ignore: use_key_in_widget_constructors
  const Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questiontext,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: isSwitched ? Colors.white : Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
