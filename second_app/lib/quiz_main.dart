import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/question_screen.dart';
import 'package:second_app/result_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
  final List<String> selectedAnswer=[];
  var activeScreen = "start-screen";

  void switchscreen(){
    setState(() {
      activeScreen = "questions-screen";
    });
  }
  void selectAnswer(String answer){
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = "result-screen";
      }); 
    }
  }
  void restartFunction(){
    setState(() {
      activeScreen = "start-screen";
      selectedAnswer.clear();
    });
  }
@override
Widget build(context){
  Widget screenwidget = StartScreen(switchscreen);
  if (activeScreen=="questions-screen"){
    screenwidget = QuesScreen(selectAnswer);
  }
  else if(activeScreen=="result-screen"){
    screenwidget = ResultScreen(selectedAnswer,restartFunction);
  }
  return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 114, 8, 133),
          body: Center(
            child: screenwidget,
          ),
        ),
      );
}
}