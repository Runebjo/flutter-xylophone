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
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.teal,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.blue,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.purple,
                child: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
