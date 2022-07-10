// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 38,
              color: Colors.purple[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green[700],
        ),
        body: DicePage(),
      ),
    ),
  );
}

// ignore: must_be_immutable
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  @override
  // ignore: override_on_non_overriding_member
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Center(
      child: Row(
        children: <Widget>[
          // ignore: avoid_unnecessary_containers

          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdiceNumber = Random().nextInt(6) + 1;
                  rightdiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // ignore: avoid_print
                setState(() {
                  rightdiceNumber = Random().nextInt(6) + 1;
                  leftdiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
