import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final player = AudioPlayer();

  void handlerPlayPause() {
    if (player.playing) {
      player.pause();
    } else {
      player.play();
    }
  }

  @override
  void initState() {
    super.initState();
    player.setAsset('lib/res/music/Annisokay - Never Enough.mp3');
    player.setLoopMode(LoopMode.all);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Нажмите для запуска'),
            IconButton(
              onPressed: () {
                setState(() {
                  handlerPlayPause();
                });
              },
              icon: Icon(player.playing ? Icons.stop : Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }
}
