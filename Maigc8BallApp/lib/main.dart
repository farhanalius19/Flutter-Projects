import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );

  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed:(){
          
          setState(() {

            ballNumber = Random().nextInt(4) + 1 ;
            print(ballNumber);
            


          });

      },
         child: Image.asset('images/ball$ballNumber.png'
          ),
      ),
    );
  }
}
