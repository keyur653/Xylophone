import 'package:audioplayers/audioplayers.dart';
// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> playSound(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav'));
  }

  Expanded BuildKey({Color color=Colors.black, int soundnumber=0}) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () {
            
            playSound(soundnumber);
          },
          child: Text("")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundnumber: 1),
              BuildKey(color: Colors.orange, soundnumber: 2),
              BuildKey(color: Colors.yellow, soundnumber: 3),
              BuildKey(color: Colors.green, soundnumber: 4),
              BuildKey(color: Colors.blue, soundnumber: 5),
              BuildKey(color: Colors.indigo, soundnumber: 6),
              BuildKey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
