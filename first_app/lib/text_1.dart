import 'package:flutter/material.dart';


class TextClass extends StatelessWidget{
  const TextClass(this.text,{super.key}); 
  final String text;

  @override
  Widget build(context) {
    return Text(
            text, 
            style: const TextStyle(color: Colors.deepPurple,
            fontSize: 20),
            );
  }
}