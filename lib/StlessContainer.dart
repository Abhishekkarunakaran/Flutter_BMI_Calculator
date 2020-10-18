import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClickTab extends StatelessWidget {
  String displayText;

  ClickTab({@required this.displayText});


  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(8),
      //height: height*0.08,
      //width: width*.4,
      decoration: BoxDecoration(
          color: Color(0xFF303030),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF323232),
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ]
      ),
      child: Center(
        child: Text(displayText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}
