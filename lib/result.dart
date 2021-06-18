import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 8) {
      resultText = "Pretty likable";
    } else if (resultScore <= 10) {
      resultText = "You are .... strange";
    } else {
      resultText = "So bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
    );
  }
}
