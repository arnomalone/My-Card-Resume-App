import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InfoCard.dart';
import 'project_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.workspaces_outline, color: Colors.deepPurpleAccent[700]),
          backgroundColor: Colors.white,
          // hoverColor: Colors.teal,
          // splashColor: Colors.grey,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectScreen()));
          },
          label : Text('Projects', style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          )),
        ),
        backgroundColor: Colors.deepPurple[600],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              // foregroundColor: Colors.lightGreenAccent,
              backgroundImage: AssetImage('images/image.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abhishek Saini',
              style: TextStyle(
                fontSize: 25,
                color: Colors.purple[100],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.purple[900],
              ),
            ),
            SizedBox(
              width: 250,
              child: Divider(color: Colors.purple[100]),
            ),
            SizedBox(
              height: 10,
            ),
            InfoCard(
              text: '9654******',
              iconData: Icons.phone_outlined,
            ),
            InfoCard(
              text: 'abhishek19007@iiitd.ac.in',
              iconData: Icons.mail_outline_outlined,
            ),
            InfoCard(
              text: 'github.com/arnomalone',
              iconData: Icons.code_outlined,
            ),
          ],
        ),
    ),
      ),
    );
  }
}

