import 'package:spotify_clone/globals.dart' as globals;
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class AudioFile extends StatefulWidget {
  const AudioFile({Key? key}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  final audioPlayer = globals.audioPlayer;
  String audio_url =
      "https://songdownloadmp3free.com/wp-content/uploads/2020/04/Suit-Punjabi-by-Jass-Manak-Dance-Punjabi-Shagur-Album-SINGLE.mp3";

  late Duration duration = const Duration();
  late Duration position = const Duration();
  bool isPlaying = false;
  bool isPaused = false;

  final List<IconData> _icons = const [
    Icons.play_arrow,
    Icons.pause,
  ];

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
  }

  Widget build_btn() {
    return IconButton(
        onPressed: () {
          if (isPlaying == false) {
            playaudio(audio_url);
            setState(() {
              isPlaying = true;
            });
          } else {
            pauseaudio();
            setState(() {
              isPlaying = false;
            });
          }
        },
        icon:
            isPlaying ? Icon(_icons[1], size: 30) : Icon(_icons[0], size: 30));
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
        value: position.inSeconds.toDouble(),
        onChanged: (value) {},
        activeColor: Colors.white,
        inactiveColor: Colors.grey[900],
        min: 0,
        max: duration.inSeconds.toDouble(),
      ),
    );
  }

  audio_players() {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 10, top: 20, bottom: 0),
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
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: build_btn(),
          ),

          const Icon(Icons.skip_next_rounded, color: Colors.white, size: 50),

          const Icon(Icons.do_not_disturb_on_outlined,
              color: Colors.white70, size: 30),
        ],
      ),
    );
  }

  time_row() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 40,
      ),
      child: SizedBox(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          position.toString().split('.').first,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
            fontFamily: GoogleFonts.lato().fontFamily,
          ),
        ),
        Text(
          duration.toString().split('.').first,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
              fontFamily: GoogleFonts.lato().fontFamily),
        ),
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //play audiop
          make_slider(),
          time_row(),
          audio_players()
        ],
      ),
    );
  }
}
