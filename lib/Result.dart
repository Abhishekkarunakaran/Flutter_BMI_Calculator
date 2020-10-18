import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Normal extends StatelessWidget {
  var value;
  Normal({this.value});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color(0xFF009600),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF323232),
                offset: Offset(5, 5),
                blurRadius: 10,
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Normal',
                style: TextStyle(
                  color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 15,
        ),
                ),
            Text(value.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text('Nice job!',
              style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
       ),
    )
          ],
        ),
    );
  }
}

// ignore: must_be_immutable
class UnderWeight extends StatelessWidget {
  var value;

  UnderWeight({this.value});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFF960000),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF323232),
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Under weight',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Text(value.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text('You should gain some weight!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class OverWeight extends StatelessWidget {
  var value;

  OverWeight({this.value});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFF960000),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF323232),
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Over weight',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Text(value.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text("It's better if you lose some weight!",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}