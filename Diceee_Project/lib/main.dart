import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int picture = 4;
  int picture2 = 1;
  void firstfuctionindart(){
    setState(() {
      picture = Random().nextInt(6) +1 ;
      picture2 = Random().nextInt(6) + 1 ;
      print("Hello 2nd button");
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                firstfuctionindart();


                print('hello 1st  button');
              },
              child: Image.asset('images/dice$picture.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  firstfuctionindart();
                },
                child: Image.asset('images/dice$picture2.png')),
          ),
        ],
      ),
    );
  }
}


