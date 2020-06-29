import 'package:flutter/material.dart';
import 'package:hellodefo/result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _que = const [
    {
      "qText": "what's your favorite Color ?",
      "answers": [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 8},
        {'text': 'Black', 'score': 6},
      ]
    },
    {
      "qText": "what's your favorite Phone ?",
      "answers": [
        {'text': 'Samsung', 'score': 50},
        {'text': 'iphone', 'score': 30},
        {'text': 'Huawei', 'score': 40},
        {'text': 'xiaomi', 'score': 20},
      ]
    },
    {
      "qText": "what's your favorite Sport ?",
      "answers": [
        {'text': 'Football', 'score': 40},
        {'text': 'Basketball', 'score': 30},
        {'text': 'Rugby', 'score': 20},
        {'text': 'Baseball', 'score': 10},
      ]
    }
  ];
  var _counter = 0;
  var _totalScore = 0;

  void _reset() {
    setState(() {
      _totalScore = 0;
      _counter = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _counter = _counter + 1;
    });
    print(_counter);
    if (_counter < _que.length) {
      print('we have more question');
    } else {
      print('No more question');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello defo app"),
        ),
        body: _counter < _que.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _que,
                counter: _counter)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
