import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
          body: BodyState(),
        ),
      ),
    );


class _BodyPageState extends State<BodyState> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  print("Button pressed! number is $ballNumber");
                });
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          )
        ],
      ),
    );
  }
}


class BodyState extends StatefulWidget {
  @override
  createState() => _BodyPageState();
}