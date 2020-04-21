import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar:AppBar(centerTitle: true ,title:Text('Diceee',),backgroundColor: Colors.black,),
        body: DiceApp(),
              

      ),
    );

  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  void changeNum(){
    setState(() {
                lnum=Random().nextInt(5)+1;
                rnum=Random().nextInt(5)+1;
              });
  }
  var lnum=1;
  var rnum=2;
  Widget build(BuildContext context) {
    
    return Center(
          child: Row(
            children: <Widget>[
              Expanded(child:FlatButton(onPressed: changeNum ,child: Image.asset('images/$lnum.png')),flex:1) ,
              Expanded(child:FlatButton(onPressed: changeNum,child: Image.asset('images/$rnum.png')),flex:1)
              
            ],
          ),
        );     
    
  }
}


