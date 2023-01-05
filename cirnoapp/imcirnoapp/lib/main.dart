import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('I am Cirno'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/cirno_portrait.jpg'),
          ),
        ),
      ),
    ),
  );
}
