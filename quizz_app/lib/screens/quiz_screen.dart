import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app/utilities/constants.dart';
import 'package:quizz_app/logic/quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  Quiz theQuiz = Quiz();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.angleLeft,
                    size: 30.0,
                    color: kBackgroundColor,
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(theQuiz.getQuizTitle(),
                        style: TitlesTextStyle(kColorBigText, 15.0),
                      ),
                    ),
                  ),
                  Icon(FontAwesomeIcons.circleQuestion,
                    size: 30.0,
                    color: kBackgroundColor,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Question 1/' + theQuiz.getTotalQuestions().toString(),
                  style: TitlesTextStyle(kAccentColor, 15.0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
              child: Text(theQuiz.getQuestion(),
                style: TitlesTextStyle(kColorBigText, 20.0),
              ),
            ),

            Expanded(
              child: ListView(
              children: <Widget>[
                kSelectedQuizCard,
                kQuizCard,
                kQuizCard,
                kQuizCard,
                kQuizCard,
              ],
            ),
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Card(
                  color: kPrimaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Next',
                        style: TitlesTextStyle(Colors.white, 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}