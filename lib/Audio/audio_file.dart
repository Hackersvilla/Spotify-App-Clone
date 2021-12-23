import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";

class AudioFile extends StatefulWidget {
  const AudioFile({Key? key}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  String url =
      "https://songdownloadmp3free.com/wp-content/uploads/2020/04/Suit-Punjabi-by-Jass-Manak-Dance-Punjabi-Shagur-Album-SINGLE.mp3";
  AudioPlayer audioPlayer = AudioPlayer();
  late Duration duration = const Duration();
  late Duration position = const Duration();
  String player_state = "Stopped";

  @override
  void initState() {
    super.initState();
    initaudio();
  }

  initaudio() {
    audioPlayer.onDurationChanged.listen((updateDuration) {
      setState(() {
        duration = updateDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((updatePosition) {
      setState(() {
        position = updatePosition;
      });
    });

    audioPlayer.onPlayerStateChanged.listen((updatedState) {
      if (updatedState == PlayerState.PLAYING) {
        player_state = "Playing";
      }
      if (updatedState == PlayerState.PAUSED) {
        player_state = "Paused";
      }
      if (updatedState == PlayerState.STOPPED) {
        player_state = "Stopped";
      }
    });
  }

  playaudio(url) {
    audioPlayer.play(url);
  }

  pauseaudio() {
    audioPlayer.pause();
  }

  stopaudio() {
    audioPlayer.stop();
  }

  make_slider() {
    return Container(
      height: 0,
      padding: const EdgeInsets.only(top: 20),
      child: Slider(
        value: 10,
        onChanged: (value) {},
        activeColor: Colors.white,
        inactiveColor: Colors.grey[900],
        min: 0,
        max: 20,
      ),
    );
  }

  audio_players() {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 10, top: 50, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //heart
          const Icon(Icons.favorite_outline_rounded,
              color: Colors.white70, size: 30),

          //middle part
          const Icon(Icons.skip_previous_rounded,
              color: Colors.white, size: 50),

          //
          GestureDetector(
              onTap: () {
                player_state = "Playing";
                playaudio(url);
                setState(() {
                  player_state == "Stopped"
                      ? const Icon(Icons.play_arrow,
                          color: Colors.black, size: 40)
                      : const Icon(Icons.pause, color: Colors.black);
                });
              },
              child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.play_arrow,
                      color: Colors.black, size: 40))),

          const Icon(Icons.skip_next_rounded, color: Colors.white, size: 50),

          const Icon(Icons.do_not_disturb_on_outlined,
              color: Colors.white70, size: 30),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //play audiop
          make_slider(),
          audio_players()
        ],
      ),
    );
  }
}
