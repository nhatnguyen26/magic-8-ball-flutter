import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent[100],
          appBar: AppBar(
            title: Text('Decision Maker'),
            backgroundColor: Colors.blueAccent[400],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  BallPageState createState() {
    return BallPageState();
  }
}

class BallPageState extends State<BallPage> {
  int ballNumber = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: imageClick,
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  void imageClick() {
    setState(() {
      int temp = 1;
      do {
        temp = random.nextInt(5) + 1;
      } while (temp == ballNumber);
      ballNumber = temp;
    });
  }
}
