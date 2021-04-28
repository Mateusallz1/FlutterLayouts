import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/dale.png'),
              ),
              Text('Mateus Alves', 
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.blueGrey,
                      fontSize: 45,
                      fontWeight:  FontWeight.bold),
              ),
              Text('Aluno de ADS',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.blueGrey.shade200,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
                  ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.blueGrey.shade100,
              ),
            ),
            buildCard('+55 86 99867 4004', Icons.phone),
            buildCard('trafalgarmateus@gmail.com', Icons.mail),
            buildCard('Inglês e Português', Icons.translate),
            buildCard('Verificado', Icons.verified_user),
            ],),
        ),
      ),
    );
  }
  Card buildCard(String text, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
      leading: Icon(
        icon,
        color: Colors.blueGrey
      ),
      title: Text(
          text,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20.0,
          fontFamily: 'Roboto'),
        ),
      ),
    );
  }
}
