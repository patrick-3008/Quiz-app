import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function() x;

  // ignore: use_key_in_widget_constructors
  const Answer(this.answerText, this.x);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: isSwitched? Colors.black:Colors.white,
          ),
          onPressed: x,
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
