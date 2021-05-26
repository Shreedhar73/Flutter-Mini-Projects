import 'package:flutter/material.dart';
void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text("Questions are here",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25,
                color: Colors.white,
                ),),

              ),
            ),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(onPressed: (){
              setState(() {
                scoreKeeper.add(Icon(Icons.check,
                  color: Colors.green,));

              });

            },
              color: Colors.redAccent.shade200,
            child: Text("True",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(onPressed: (){
              setState(() {
                scoreKeeper.add(Icon(Icons.close,
                  color: Colors.red,));

              });
            },
              color: Colors.redAccent.shade200,

            child: Text("False",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,
            fontSize: 25,),),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),

      ],

    );
  }
}


