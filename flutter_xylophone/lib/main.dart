import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int id, String note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$id' '_' '$note.wav'));
  }

  Widget buildKey(Color color, int id, String note){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0.0),
        ),
        onPressed: () {
          playSound(id, note);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildKey(Colors.red, 1, 'c'),
          buildKey(Colors.blue, 2, 'd'),
          buildKey(Colors.green, 3, 'e'),
          buildKey(Colors.orange, 4, 'f'),
          buildKey(Colors.yellow, 5, 'g'),
          buildKey(Colors.pink, 6, 'a'),
          buildKey(Colors.amber, 7, 'b'),
        ],
      ),
    );
  }
}
