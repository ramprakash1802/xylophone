import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildkey({MaterialColor color,int soundnumber}){
    return    Expanded(
      child: TextButton(
        onPressed: (){
          playsound(soundnumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.blue,soundnumber: 1),
              buildkey(color: Colors.red,soundnumber: 2),
              buildkey(color: Colors.purple,soundnumber: 3),
              buildkey(color: Colors.green,soundnumber: 4),
              buildkey(color: Colors.yellow,soundnumber: 5),
              buildkey(color: Colors.orange,soundnumber: 6),
              buildkey(color: Colors.teal,soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}