import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_music-$musicNumber.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    Expanded myButton(int musicNumber, Color buttonColor, String buttonText) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: ElevatedButton(
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              playMusic(musicNumber);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.music_note,
                    color: buttonColor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    buttonText,
                    style: TextStyle(color: buttonColor, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("نغمات"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, Colors.red, 'Samsung Galaxy'),
            myButton(2, Colors.green, "Samsung Note"),
            myButton(3, Colors.black, "Nokia"),
            myButton(4, Colors.orange, "iphone11"),
            myButton(5, Colors.blue, "WatsApp"),
            myButton(6, Colors.purple, "Samsung S7"),
            myButton(7, Colors.black, "iphone6"),
          ],
        ),
      ),
    );
  }
}
