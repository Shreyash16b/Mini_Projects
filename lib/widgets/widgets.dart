import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

var textInputDecoration = InputDecoration(
  labelStyle: const TextStyle(
      fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Constants().primaryColor, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Constants().primaryColor, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Constants().primaryColor, width: 2),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: ((context) => page)));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: ((context) => page)));
}

void showSnackBar(context, message, color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
    message,
    style: const TextStyle(fontSize: 14),
  ),
  backgroundColor: color,
  duration: const Duration(seconds:2),
  action: SnackBarAction(label: "OK", onPressed: (){}, textColor: Colors.white,),
  ));
}
