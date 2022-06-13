import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceStatePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
              onPressed: () {
                print("press");
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class DiceStatePage extends StatefulWidget {
  DiceStatePage({Key? key}) : super(key: key);

  @override
  State<DiceStatePage> createState() => _DiceStatePageState();
}

class _DiceStatePageState extends State<DiceStatePage> {
  var leftDiceNumber = 2;
  var rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6);
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
