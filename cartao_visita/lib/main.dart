import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/me.jpeg'),
              ),
              Text(
                'Mateus Alves', style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              Divider(color: Colors.black,),
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
              Text('CONTATO PROFISSIONAL', 
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
        size: 45,
      ),
    );
  }
}

