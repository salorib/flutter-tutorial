import 'package:flutter/material.dart';
import 'package:flutter_quizzler/quizz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Quizzler(),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {

  List<Widget> quizzScore = [];

  Quizz myQuizz = Quizz();

  void checkAnswer(bool pickedAnswer){

    if(!myQuizz.isFinished()) {

      if(myQuizz.getAnswer() == pickedAnswer){
        quizzScore.add(Icon(Icons.check, color: Colors.green));
        myQuizz.countAnswers();
      }else{
        quizzScore.add(Icon(Icons.close, color: Colors.red));
      }
      setState((){
        myQuizz.nextQuestion();
      });

    }else{

      int total = myQuizz.getTotalQuestions();
      int fscore = myQuizz.getTotalScore();

      Alert(
          context: context,
          type: AlertType.none,
          title: "Finished!",
          desc: 'You got $fscore from $total, total answers.'
      ).show();

      setState((){
        myQuizz.resetQuizz();
        quizzScore = [];
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                myQuizz.getQuestion(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.0),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.0),
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: quizzScore,
          ),
        ],
      ),
    );
  }
}

