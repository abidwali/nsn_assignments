// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.blue,
        //textColor: Colors.white,
        onPressed: selectHandler,
        // color: Colors.blue,
        //textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
