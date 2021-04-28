import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/me.jpeg'),
              ),
              Text(
                'Mateus Alves', style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              Divider(color: Colors.white,),
              Row(   
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      buildCard(Icons.phone),
                      buildCard(Icons.email),
                    ],
                  ),
                  Column(
                    children: [
                      buildCard(Icons.camera_enhance),
                      buildCard(Icons.language),
                    ],
                  ),
                ],
              ),
              Text('Chama no zap', 
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData icon) {
    return Card(
      color: Colors.white,
      child: Icon(
        icon,
        color: Colors.black,
        size: 40,
      ),
    );
  }
}

