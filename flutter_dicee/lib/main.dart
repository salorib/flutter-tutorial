import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var lDice = 1;
  var rDice = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
          TextButton(
              onPressed: (){
                randomizeDice();
              },
              child: Image.asset('images/dice$lDice.png')
          ),
          ),
          Expanded(child:
          TextButton(
              onPressed: (){
                randomizeDice();
              },
              child: Image.asset('images/dice$rDice.png')
          ),
          ),
        ],
      ),
    );
  }

  void randomizeDice(){
    setState((){
      rDice = Random().nextInt(6) + 1;
      lDice = Random().nextInt(6) + 1;
    });
  }

}
