import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text('Magic 8 Ball')),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  
  int math = 1;

  void maths() {
    setState(() {
    math = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            maths();
          }, 
          child: Image.asset('images/ball$math.png')
        ),
      ),
    );
  }
}