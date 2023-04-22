import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void platNumberSound(int number){
    final player = AudioPlayer();
    player.play(AssetSource("assets_number_$number.wav"));
  }
  Expanded drawButton(Color color, int soundNumber){
    return Expanded(
      child: TextButton(
        onPressed: () {
          platNumberSound(soundNumber);
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
          textStyle: const TextStyle(
            fontSize: 72.0,
          ),
        ),
        child: Text('$soundNumber'),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(Colors.red , 0),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(Colors.blue, 1),
                    drawButton(Colors.green, 2),
                    drawButton(Colors.deepPurple, 3),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(Colors.cyan, 4),
                    drawButton(Colors.amberAccent, 5),
                    drawButton(Colors.lightGreenAccent, 6),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(Colors.tealAccent, 7),
                    drawButton(Colors.pinkAccent, 8),
                    drawButton(Colors.grey, 9),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(Colors.blueGrey, 10),
            ],
          ),
        ),
        ],
      ),
    ),
    ),
    );
  }
}
