import 'package:first_app/diceroll.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/text_1.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
      // child: TextClass("Output is a second parameter"),
      child: DiceRoll(),
        ),
      );
  }
}
