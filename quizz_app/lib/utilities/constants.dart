import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app/screens/profile_screen.dart';
import 'package:quizz_app/screens/myquiz_screen.dart';
import 'package:quizz_app/screens/statistics_screen.dart';
import 'package:quizz_app/screens/home_screen.dart';

const kPrimaryColor = Color(0xff8B80B6);
const kBackgroundColor = Color(0xffddddde);
const kAccentColor = Color(0xffFCA82F);

const kColorBigText = Color(0xff161618);
const kColorSmallText = Color(0xffddddde);

const kCardQuizBigTextStyle = TextStyle(
  color: kColorBigText,
  fontFamily: 'RoundedMplus',
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);

const kCardQuizSmallTextStyle = TextStyle(
  color: kColorSmallText,
  fontFamily: 'RoundedMplus',
  fontSize: 10.0,
  fontWeight: FontWeight.bold,
);

TextStyle TitlesTextStyle(Color color, double size){
  return TextStyle(
    color: color,
    fontFamily: 'RoundedMplus',
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
}

BottomAppBar getBottomAppBar(BuildContext context, String screen){
  return BottomAppBar(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()),);
            },
            child: Icon(FontAwesomeIcons.house, color: (screen == 'home') ? kPrimaryColor : kBackgroundColor, size: 35.0,),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StatisticsScreen()),);
            },
            child: Icon(FontAwesomeIcons.chartSimple, color: (screen == 'statistics') ? kPrimaryColor : kBackgroundColor, size: 35.0,),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyQuizScreen()),);
            },
            child: Icon(FontAwesomeIcons.solidFolder, color: (screen == 'favorites') ? kPrimaryColor : kBackgroundColor, size: 35.0,),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()),);
            },
            child: Icon(FontAwesomeIcons.solidUser, color: (screen == 'profile') ? kPrimaryColor : kBackgroundColor, size: 35.0,),
          ),
        ],
      ),
    ),
  );
}


var kSelectedQuizCard = Padding(
  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
  child: Card(
    color: kPrimaryColor,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(
            FontAwesomeIcons.circleDot,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        Text(
          'Option 1',
          style: TitlesTextStyle(Colors.white, 15.0),
        ),
      ],
    ),
  ),
);

var kQuizCard = Padding(
  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
  child: Card(
    color: Colors.white,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(
            FontAwesomeIcons.circle,
            size: 30.0,
          ),
        ),
        Text(
          'Option 2',
          style: TitlesTextStyle(kColorBigText, 15.0),
        ),
      ],
    ),
  ),
);