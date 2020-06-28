import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final counter;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[counter]['qText']),
        ...(questions[counter]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer['text']);
        }).toList()
      ],
    );
  }
}
