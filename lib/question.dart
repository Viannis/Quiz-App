import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(top: 8.0),
      width: double.infinity,
      child:Text(
        questionText,
        style: TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}