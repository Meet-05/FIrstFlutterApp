import "package:flutter/material.dart";

//the runApp method tells flutter to draw the widget on the screen,
//so flutter  will call the build method of the class which we passed to runApp
//MyApp class is instantiated and passed as arguement
void main() {
  runApp(MyApp());
}

//StatelessWidget is a class of package material.dart
//The Build method is used to return a Widget ,hence return type is widget
//MaterialApp allows us to use pre-build widgets provided by material.dart package.Example-Text class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //The MaterialApp class takes named argurments and Text class takes postional arguements
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('Hello world'),
      ),
    );
  }
}
