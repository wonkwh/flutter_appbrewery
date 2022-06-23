import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MagicBallApp(),
    ),
  );
}

class MagicBallApp extends StatelessWidget {
  const MagicBallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Ask Me Anythink'),
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$selectedIndex.png'),
        onPressed: () {
          setState(() {
            selectedIndex = Random().nextInt(4) + 1;
          });
        },
      ),
    );
  }
}
