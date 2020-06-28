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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int leftDiceCount = 1;
  int rightDiceCount = 1;

  void changeDice() {
    setState(() {
      leftDiceCount = Random().nextInt(6) + 1;
      rightDiceCount = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$leftDiceCount.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$rightDiceCount.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
