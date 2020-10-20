import 'package:bmi_calculator/Container.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/StlessContainer.dart';
import 'package:bmi_calculator/Result.dart';

void main(){
  runApp(MaterialApp(
    home: Bmi(),
    title: 'BMI Calculator',
    theme: ThemeData(
      primaryColor: Color(0xFF323232),
    ),
  ));
}

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool _w1 = true;
  bool _w2 = true;
  bool _w3 = true;
  bool _bottom =true;
  bool _w4 = true;

  var _heightCm = 150;
  double _heightM=0;
  int _weight=45;
  double _bmiValue;
  var _age=20;

  void _incrementHeight(){
    setState(() {
      _heightCm+=1;
    });
  }
  void _decrementHeight(){
    setState(() {
      _heightCm-=1;
    });
  }

  void _incrementWeight(){
    setState(() {
      _weight+=1;
    });
  }
  void _decrementWeight(){
    setState(() {
      _weight-=1;
    });
  }

  void _incrementAge(){
    setState(() {
      _age+=1;
    });
  }

  void _decrementAge(){
    setState(() {
      _age-=1;
    });
  }

  void _calculateBMI(){
    setState(() {
      double _doubleValue = _heightCm.toDouble();
      _heightM = (_doubleValue/100);
      _bmiValue = (_weight/(_heightM*_heightM));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        )
        ),
      ),
      backgroundColor: Color(0xFF3a3a3a),
      body: Container(
        margin: EdgeInsets.only(top:8,right:8,left:8),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  if(_w1){
                    _w1=false;
                  }
                  else{
                    _w1=true;
                  }
                  if(_w4==false){
                    _w4=true;
                  }
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height:_w1?150:200,
                width:_w1?100:200,
                curve: Curves.elasticOut,
                child: Center(
                  child: _w1?ClickTab(displayText: 'HEIGHT'):CalTab(text: "HEIGHT",value: _heightCm,unit: ' cm',increment: ()=>_incrementHeight(),decrement: ()=>_decrementHeight(),),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                  onTap: (){
                    setState(() {
                      if(_w2){
                        _w2=false;
                      }
                      else{
                        _w2=true;
                      }
                      if(_w4==false){
                        _w4=true;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height:_w2?150:250,
                    width:_w2?30:80,
                    curve: Curves.elasticOut,
                    child: Center(
                      child: _w2?ClickTab(displayText: 'WEIGHT'):CalTab(text: 'WEIGHT',value: _weight,unit:' kg',increment: ()=>_incrementWeight(),decrement: ()=>_decrementWeight(),),
                    ),
                  ),
                ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(_w3){
                          _w3=false;
                        }
                        else{
                          _w3=true;
                        }
                        if(_w4==false){
                          _w4=true;
                        }
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height:_w3?150:250,
                      width:_w3?50:80,
                      curve: Curves.elasticOut,
                      child: Center(
                        child: _w3?ClickTab(displayText: 'AGE'):CalTab(text: 'AGE',value: _age,unit: '',increment: ()=>_incrementAge(),decrement: ()=>_decrementAge(),),
                      ),
                    ),
                  ),
                )
              ],
            ),
            AnimatedContainer(
                duration: Duration(seconds: 2),
                height:_w4?150:300,
                width:_w4?100:200,
                curve: Curves.elasticOut,
                child: Center(
                  child: _w4?ClickTab(displayText: 'RESULT'):(18.5<=_bmiValue&&24.9>=_bmiValue)?Normal(value: _bmiValue):(18.4>=_bmiValue)?UnderWeight(value: _bmiValue):OverWeight(value:_bmiValue),
                ),
              ),
          ],

        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          setState(() {

            if(_bottom){
              _bottom=false;
              _calculateBMI();
            }
            else{
              _bottom=true;
              _heightCm = 150;
              _weight=45;
              _age=20;
            }
            if(_w3==false){
              _w3=true;
            }
            else{
              _w3 = false;
            }
            if(_w2==false){
              _w2=true;
            }
            else{
              _w2 = false;
            }
            if(_w1==false) {
              _w1 = true;
            }
            else{
              _w1 = false;
            }
            if(_w1&&_w2&&_w3){
              _w4=false;
            }
            else{
              _w4 = true;
            }
          });
        },
        child: AnimatedContainer(
          height: 60,
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          duration: Duration(seconds:2),
          child:(_w1==false&&_w2==false&&_w3==false)?Center(
            child: Text('CALCULATE',
            style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.w500,
            ),),
          ):Center(
            child: Text('READY TO CALCULATE?',
                      style: TextStyle(
                      color: Colors.white,
                        fontWeight: FontWeight.w500,
            ),
        ),
          ),
      ),
    )
    );
  }
}
