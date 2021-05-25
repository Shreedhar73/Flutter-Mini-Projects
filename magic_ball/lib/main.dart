import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: MainApp(),
  ),
);

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BallPage(),

    );

  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(

      child: MaterialButton(
        onPressed: (){
          setState(() {
            changeBallNo();
          });
        },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }

  void changeBallNo() {
    ballNumber = Random().nextInt(5) + 1;
  }
}


