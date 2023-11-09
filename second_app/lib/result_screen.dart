import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers,this.restartFunction,{super.key});

  final List<String> chosenAnswers; 
  final void Function() restartFunction;

  List<Map<String , Object>> getSummaryData(){
    final List<Map<String , Object>> summary = [];
    for (var i=0; i < chosenAnswers.length ; i++){
      summary.add({
        'question_index': i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswers[i],
      },);
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summarydata = getSummaryData();
    final numTotal = questions.length;
    final numCorrect = summarydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    


    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered $numCorrect out of $numTotal"),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summarydata),
            const SizedBox(height: 30),
            TextButton.icon(onPressed: restartFunction, icon: const Icon(Icons.repeat), label: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
