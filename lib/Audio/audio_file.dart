import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";

class AudioFile extends StatefulWidget {
  AudioPlayer advanceplayer;
  AudioFile({Key key, this.advanceplayer}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
