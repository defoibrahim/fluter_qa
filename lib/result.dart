import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFun;
  Result(this.resultScore, this.resetFun);
  String get resultText {
    var msg = "you didt it";
    if (resultScore < 10) {
      msg = "You better die";
    } else if (resultScore <= 40) {
      msg = "Not Bad";
    } else if (resultScore <= 80) {
      msg = "Smart kid !";
    } else {
      msg = "wow .. you deserve a warm HUG !!";
    }
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetFun,
          )
        ],
      ),
    );
  }
}
