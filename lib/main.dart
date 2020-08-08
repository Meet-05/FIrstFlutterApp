import 'dart:convert';

import "package:flutter/material.dart";

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
  int questionNumber = 0;

  void answerQuestion() {
    setState(() {
      questionNumber = questionNumber + 1;
    });
    print(questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['whats your fav color', 'your fav food item'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionNumber]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: () => {print("answer 2 selected")},
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: () => {print("answer 3 selected")},
            ),
          ],
        ),
      ),
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
