import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'package:quizz_app/screens/quiz_screen.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({required this.icon, required this.quizTitle, required this.totalQuestions});

  final IconData icon;
  final String quizTitle;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()),);

      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(icon,
                  size: 30.0,
                  color: Color(0xffFCA82F),
                ),
                color: Color(0xffFFF8E8),
                height: 50.0,
                width: 50.0,
              ),
              SizedBox(width: 15.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(quizTitle,
                    style: kCardQuizBigTextStyle,
                  ),
                  Text('$totalQuestions Questions',
                    style: kCardQuizSmallTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

