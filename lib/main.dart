import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;
  void _answerQuestion() {
    setState(() {
      _counter = _counter + 1;
    });
    print(_counter);
  }

  var que = ["what's your fav color ?", "what's your fav phone ?"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello defo app"),
        ),
        body: Column(
          children: [
            Text(que[_counter]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
