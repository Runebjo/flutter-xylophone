import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.black),
              buildKey(6, Colors.teal),
              buildKey(7, Colors.brown),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey(int sound, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        color: color,
        child: null,
      ),
    );
  }
}
