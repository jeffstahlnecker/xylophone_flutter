import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey ({Color color, int tone}){
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(tone);
          }
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
            children: <Widget>[
              buildKey(color: Colors.red, tone: 1),
              buildKey(color: Colors.pink, tone: 2),
              buildKey(color: Colors.blue, tone: 3),
              buildKey(color: Colors.purple, tone: 4),
              buildKey(color: Colors.yellow, tone: 5),
              buildKey(color: Colors.orange, tone: 6),
              buildKey(color: Colors.teal, tone: 7),

            ],
          ),
        ),
      ),
    );
  }
}
