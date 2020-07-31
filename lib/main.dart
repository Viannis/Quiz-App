import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText' : 'What is your name',
      'answers' : [
        {'text' : 'Murphy', 'score' : 10 },
        {'text' : 'Viannis', 'score' : 0 },
        {'text' : 'Caxton', 'score' : 0 },
      ],
    },
    {
      'questionText' : 'What is your age',
      'answers' : [
        {'text' : '10', 'score' : 0 },
        {'text' : '20', 'score' : 10 },
        {'text' : '30', 'score' : 0 },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0; 
    });
  }

  void answerQuestion(int score){
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Quiz It!..."),
          centerTitle: true,
        ),
        body:Container(
          child: (_questionIndex < _questions.length) 
          ? Quiz(answerQuestion: answerQuestion, questionIndex: _questionIndex, questions: _questions,) 
          : Result(_totalScore, _resetQuiz),
        )
      ),
    );
  } 
}
