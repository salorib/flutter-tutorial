import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app/utilities/constants.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({Key? key}) : super(key: key);

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: kBackgroundColor,
          bottomNavigationBar: getBottomAppBar(context, 'favorites'),
          body: ListView(

          ),
        ),
      ),
    );
  }
}
