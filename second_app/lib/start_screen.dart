import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(context){
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //const SizedBox(height: 120),
              Image.asset(
                  'assets/images/quizlogo.png',
                  width: 300,
                  color: const Color.fromARGB(141, 255, 255, 255),
                ),
              //Opacity(
                //opacity: 0.5,
                //child: Image.asset(
                  //'assets/images/quizlogo.png',
                  //width: 300,
                //),
              //),
              const SizedBox(
                height: 30,
              ),
              const Text("Learn Flutter the Fun way",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                onPressed: startquiz,
                style: 
                OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(
                      fontSize: 25,
                    ),),
                    icon: const Icon(Icons.arrow_circle_right_outlined),
                  label : const Text('Start Quiz'),
              )
            ],
          );
  }

}