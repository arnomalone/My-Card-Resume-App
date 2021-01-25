import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kBackGroundColor = Colors.white;
var kIconColor = Colors.deepPurpleAccent.shade700;
const kTextColor = Colors.deepPurpleAccent;



class InfoCard extends StatelessWidget {

  final IconData iconData;
  final String text;

  InfoCard({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackGroundColor,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      // width: 20,
      child: ListTile(
        leading: Icon(
          iconData,
          color: kIconColor,
        ),
        title: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: kTextColor,
              fontWeight: FontWeight.bold,
              // backgroundColor: Colors.white,
            )
        ),
      ),
    );
  }
}