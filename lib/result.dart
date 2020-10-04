import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = 'Noob!';
    } else if (resultScore <= 17) {
      resultText = 'Intermediate!';
    } else if (resultScore <= 19) {
      resultText = 'Pro!';
    } else {
      resultText = 'Pro AF!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.black,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
