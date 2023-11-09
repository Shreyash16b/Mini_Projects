import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    
    
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(((data['question_index'] as int) + 1).toString(), style: TextStyle(backgroundColor: 
                data['user_answer']==data['correct_answer']
                ? Colors.green : Colors.pink
                ),),
                const SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String, style: const TextStyle(fontWeight: FontWeight.bold),),
                      RichText(text: TextSpan(text:'', style: const TextStyle(color: Colors.black ,fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                      const TextSpan(text: 'Your answer : ',style:  TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: data['user_answer'] as String)],),),
                      RichText(text: TextSpan(text:'', style: const TextStyle(color: Colors.black ,fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                      const TextSpan(text: 'Correct answer : ',style:  TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: data['correct_answer'] as String)],),),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
