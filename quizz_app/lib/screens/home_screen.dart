import 'package:flutter/material.dart';
import 'package:quizz_app/screens/quiz_screen.dart';
import 'package:quizz_app/screens/profile_screen.dart';
import 'package:quizz_app/screens/myquiz_screen.dart';
import 'package:quizz_app/screens/statistics_screen.dart';
import 'package:quizz_app/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app/utilities/quiz_card.dart';
import 'package:quizz_app/logic/quiz.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: kBackgroundColor,
          bottomNavigationBar: getBottomAppBar(context, 'home'),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(30.0),
                      color: kPrimaryColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lets play',
                            style: TitlesTextStyle(Colors.white, 35.0),
                          ),
                          Text('And be the first!',
                            style: TitlesTextStyle(Colors.white, 15.0),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 110.0,),

                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        bottom: 10.0,
                      ),
                      child: ListView(
                        children: <Widget>[
                          Text('Recent Quiz',
                            style: TitlesTextStyle(kColorBigText, 20.0),
                          ),
                          QuizCard(
                            icon: FontAwesomeIcons.hashtag,
                            quizTitle: 'Math 2',
                            totalQuestions: 10,
                          ),
                          QuizCard(
                            icon: FontAwesomeIcons.language,
                            quizTitle: 'English for begginers',
                            totalQuestions: 15,
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),


              Align (
                alignment: Alignment(0.0, -0.5),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    height: 160.0,
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('Enter your quiz code',
                          style: TextStyle(
                            color: kColorBigText,
                            fontFamily: 'RoundedMplus',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('To play with your friends',
                          style: TextStyle(
                            color: kColorSmallText,
                            fontFamily: 'RoundedMplus',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: kPrimaryColor,
                          ),
                          child: Text('Enter'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),



        ),
      ),
    );
  }
}
