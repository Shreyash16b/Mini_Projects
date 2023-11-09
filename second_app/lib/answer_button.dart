
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.pressAnswer, this.answertext, {super.key});

  final String answertext;
  final void Function() pressAnswer;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: pressAnswer,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 51, 2, 85),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      child: Text(
        answertext,
        style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255)),
            textAlign: TextAlign.center,
      ),
    );
  }
}
