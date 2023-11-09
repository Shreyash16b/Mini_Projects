import 'package:flutter/material.dart';
import 'package:second_app/quiz_main.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 114, 8, 133),
        body: Center(
          child: Quiz(),
        ),
      ),
    ),
  );
}
