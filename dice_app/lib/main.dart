import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade100,
        appBar: AppBar(
          title: Text("Dice App"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.3,),
        Row(
          children: [

            Expanded(
              child: Card(
                shape: CircleBorder(),
                color: Colors.blueGrey,
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: Card(
                shape: CircleBorder(),
                color: Colors.blueGrey,

                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),



          ],
        ),
        MaterialButton(
          color: Colors.amber,
          height: 80,
          minWidth: 100,
          onPressed: (){
            setState(() {
              rollDice();
            });
          },
          child: Text("Roll Dice"),)

      ],
    );
  }

  void rollDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

  }
}


// class DicePage extends StatelessWidget {
//
// }







