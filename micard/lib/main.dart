import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            CircleAvatar(
              radius: 70,
              //backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/1.jpg'),
            ),
            Text(
              'Farhan ',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontSize: 25,
                  fontFamily: 'SourceSans',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Card(

              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child:ListTile(
                leading:Icon(
                  Icons.phone,
                  size: 45,
                  color: Colors.teal,

                ),
                title: Text(
                  '+923489386463',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900),
                ),
              ) ,
            ),
            Card(

              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child:ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 45,
                  color: Colors.teal,

                ),
                title: Text(
                  'farhanalius19@yahoo.com',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900),
                ),

              )
            ),
          ]),
        ),
      ),
    );
  }
}

