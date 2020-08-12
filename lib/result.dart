import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    print(resultScore);
    String resultText;
    if (resultScore <= 8) {
      resultText = "You scored below 8 ";
    } else if (resultScore <= 10) {
      resultText = "You scored below 10-> ";
    } else if (resultScore <= 12) {
      resultText = "You scored below 12 ->";
    } else {
      resultText = "You scored below 16 ->";
    }
    print(resultText);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
