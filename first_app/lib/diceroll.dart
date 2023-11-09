import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
  return _DiceRollState();
  //Center(
      // child: TextClass("Output is a second parameter"),
   // );
  }
}

var randomiser = Random();
class _DiceRollState extends State<DiceRoll>{

  var dicebtn = 'assets/images/dice-1.png';

@override
Widget build(context) {
  return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            dicebtn,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  var randnum = randomiser.nextInt(6) + 1;
                  dicebtn = 'assets/images/dice-$randnum.png';  
                });
              },
              style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 26.9),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text("Press to roll the dice"))
        ],
      );
}
}