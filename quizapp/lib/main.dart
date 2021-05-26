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
  List<String> questions= [
    'You can lead a cow down stairs but not upstairs',
    'Approximately one quarter of human bones are in the feet',
    'Buddha was born in Nepal',
    'Aayam is Chutiya',
    'Enjoyed It??',


  ];
  List<bool> answers = [
    false,
    false,
    true,
    true,
    true,
  ];
  int questionNumber = 0;

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
                child: Text(questions[questionNumber ],
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
              bool correctAnswer = answers[questionNumber];
              if(correctAnswer == true){
                print('User got it right');
              }else{
                print("User got it wrong");
              }
              setState(() {
                questionNumber++;
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
              bool correctAnswer = answers[questionNumber];
              if(correctAnswer == false){
                print('User got it right');
              }else{
                print("User got it wrong");
              }
              setState(() {
                questionNumber++;
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


