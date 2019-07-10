import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade700,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text('Ask Me Anything!'),
          ),
          body: Magic8BallApp(),
        ),
      ),
    );

class Magic8BallApp extends StatefulWidget {
  @override
  _Magic8BallAppState createState() => _Magic8BallAppState();
}

class _Magic8BallAppState extends State<Magic8BallApp> {
  int answerNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                answerNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$answerNumber.png'),
          ),
        ),
      ),
    );
  }
}
