import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildContainer(Colors.white),
                buildStarIcon(Colors.grey),
                buildContainer(Colors.red),
                buildStarIcon(Colors.grey),
                buildContainer(Colors.blue),
              ],
            ),
        ),
      ),
    );
  }
  Container buildContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Icon(Icons.star, size: 50, color: Colors.black,),
    );
  }

  Icon buildStarIcon(Color color){
    return Icon(
      Icons.star,
      color: color,
      size: 50,
    );
  }
}

