import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionNumber = 0;
   int _totalScore=0;
  var _questions = [
    {
      'questionText': 'what is your favorite Color',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 1},
      ]
    },
    {
      'questionText': 'your favorite Animal',
      'answers': [
        {'text': 'Horse', 'score': 10},
        {'text': 'Donkey', 'score': 5},
        {'text': 'MOnkey', 'score': 1},
      ]
    },
    {
      'questionText': 'your favorite programming language',
      'answers': [
        {'text': 'C', 'score': 10},
        {'text': 'C++', 'score': 5},
        {'text': 'Python', 'score': 1},
        {'text': 'dart', 'score': 100},
      ]
    },
    {
      'questionText': 'your favorite phone',
      'answers': [
        {'text': 'Android', 'score': 10},
        {'text': 'Apple', 'score': 5},
        {'text': 'Pinapple', 'score': 0},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionNumber = _questionNumber + 1;
    });
    if (_questionNumber < _questions.length) {
      print('more questions');
    } else {
      print('no more questions');
    }
    print(_questionNumber);
  }


  void _resetQuiz(){
    setState(() {
        _questionNumber = 0;
         _totalScore=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionNumber < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionNumber: _questionNumber,
                )
              : Result(_totalScore,_resetQuiz)),
    );
  }
}

// ---------------------------------------------------------------------------------------------------------------
// Understanding The Code

// 1.The Basic Structure
//the runApp method tells flutter to draw the widget on the screen,
//so flutter  will call the build method of the class which we passed to runApp
//MyApp class is instantiated and passed as arguement
//StatelessWidget is a class of package material.dart
//The Build method is used to return a Widget ,hence return type is widget
//MaterialApp allows us to use pre-build widgets provided by material.dart package.Example-Text class
//The MaterialApp class takes named argurments and Text class takes postional arguements

//2.Stateful  Widgets:
//the createState method returns a state object which is connected to a stateful widget
//the State is a class provided by material dart package .It is generic type hence we need to provide the type ////in <>.
//setState is a method provided by State class.
//in the setstate we write code which we want to change after the state
//it rerenders the code which is only related with properties used inside the setState,instead of ///////??////rerendering the entire code ,hence improving performance.
//-----------------------------------------------------------------------------------------------------------------
// Steps to convert stateless ->Stateful
// 1.Create a new class which extends StatefulWidget with method createState() that returns a State object
// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }
// 2.Create another class which extends the State class
// with base code and a method setState which consists of code that causes state change

// class MyAppState extends State<MyApp> {
// int questionNumber = 0;

// void answerQuestion() {
//   setState(() {
//     questionNumber = questionNumber + 1;
//   });
//   print(questionNumber);
// }
//---------------------------------------------------------------------------------------------
