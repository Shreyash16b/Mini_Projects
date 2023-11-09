import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen(this.onAnswered, {super.key});
  final void Function(String selectedanswer) onAnswered;
  @override
  State<QuesScreen> createState() {
    return _Questionsc();
  }
}

class _Questionsc extends State<QuesScreen> {
  var currentQuestionIndex = 0;
  void answerfunction(String selectedanswer) {
    widget.onAnswered(selectedanswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(() {
                answerfunction(item);
              }, item);
            }),
          ],
        ),
      ),
    );
  }
}
