import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title: Text(
          'Twin Dice Roller!',
        ),
      ),
      body: DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;
  rolldice() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rolldice();
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rolldice();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
