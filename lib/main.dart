import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    void answerQuestion() {
      print('Answer choosen');
      print(questionIndex);
    }

    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(questions.elementAt(questionIndex)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 choosen')),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 choosen');
              }),
        ]),
      ),
    );
  }
}
