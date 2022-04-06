import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Expanded button(int s,Color colr){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(s);
        },
        color: colr,
        child: Text("."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(1,Colors.orange ),
              button(2,Colors.red ),
              button(3,Colors.teal ),
              button(4,Colors.blue ),
              button(5,Colors.brown ),
              button(6,Colors.green ),
              button(7,Colors.indigo ),



            ],
          ),
        ),
      ),
    );
  }
}
