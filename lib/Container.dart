import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalTab extends StatefulWidget {
  String text;
  var value;
  String unit;
  Function increment;
  Function decrement;

  CalTab({@required this.text,this.value,this.unit,this.increment,this.decrement});
  @override
  _CalTabState createState() => _CalTabState();
}

class _CalTabState extends State<CalTab> {
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFb9b9b9),
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
          Text(widget.text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.grey[900],
          ),
          ),
          Text(widget.value.toString()+widget.unit,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.grey[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                Icons.add,
                    size: 40,
                    color: Colors.green[700],
              ),
                  onPressed: widget.increment,
              ),
              IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.red[500],
                  ),
                  onPressed: widget.decrement,
                  )
            ],
          )
    ],
    )
    );
  }
}
