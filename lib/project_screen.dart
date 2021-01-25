import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InfoCard.dart';

class ProjectScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.contact_page_outlined, color: Colors.deepPurpleAccent[700]),
          backgroundColor: Colors.white,
          // hoverColor: Colors.teal,
          // splashColor: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          label : Text('Contact', style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          )),
        ),
        backgroundColor: Colors.deepPurple[600],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoCard(
                iconData: Icons.whatshot_outlined,
                text: 'Disputatio - Chatting app',
              ),
              InfoCard(
                iconData: Icons.ac_unit_outlined,
                text: 'Clima - Weather app',
              ),
              InfoCard(
                iconData: Icons.note_add_outlined,
                text: 'MyNotes - Notes keeper',
              ),
              InfoCard(
                iconData: Icons.accessible_outlined,
                text: 'BMI calculator',
              ),
              InfoCard(
                iconData: Icons.add_alert_outlined,
                text: 'DooDoo - To-do list',
              )
            ],
          ),
        )
      ),
    );
  }
}

