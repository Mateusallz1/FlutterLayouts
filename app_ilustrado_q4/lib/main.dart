import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildContainer(Colors.red),              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildContainer(Colors.yellow),
                  buildContainer(Colors.green),
                ],
              ),
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
    );
  }
}
