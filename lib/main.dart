import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.workspaces_outline5, color: Colors.deepPurpleAccent[700]),
          backgroundColor: Colors.white,
          // hoverColor: Colors.teal,
          // splashColor: Colors.grey,
          onPressed: () {
          },
          label : Text('More', style: TextStyle(
            color: Colors.deepPurpleAccent
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
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
              // width: 20,
              child: ListTile(
                leading: Icon(
                    Icons.phone_outlined,
                    color: Colors.deepPurpleAccent[700],
                ),
                title: Text(
                    '9654831703',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.white,
                    )
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
              // width: 20,
              child: ListTile(
                leading: Icon(
                    Icons.mail_outline_outlined,
                  color: Colors.deepPurpleAccent[700],
                ),
                title: Text(
                  'abhishek19007@iiitd.ac.in',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    // backgroundColor: Colors.white,
                  )
              ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
              // width: 20,
              child: ListTile(
                leading: Icon(
                  Icons.code_outlined,
                  color: Colors.deepPurpleAccent[700],
                ),
                title: Text(
                    'github.com/arnomalone',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.white,
                    )
                ),
              ),
            ),
          ],
        ),
    ),
      ),
    );
  }
}