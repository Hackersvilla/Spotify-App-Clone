import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/Audio/audio_file.dart';
import 'package:spotify_clone/globals.dart' as globals;

class AudioUI extends StatefulWidget {
  const AudioUI({Key? key}) : super(key: key);

  @override
  _AudioUIState createState() => _AudioUIState();
}

class _AudioUIState extends State<AudioUI> {
  late String get_string;
  late String text;
  late Widget image;
  late String artist_text;

  @override
  void initState() {
    super.initState();
    setState(() {
      get_string = globals.block_id;
    });
    if (get_string == '1') {
      text = "Suit Punjabi";
      image = Image.asset("assets/punjabi.jpg", width: 400, height: 400);
      artist_text = "Jass Manak";
    }
    if (get_string == '2') {
      text = "Desi Kalakaar";
      image = Image.network(
          "https://m.media-amazon.com/images/I/618NBd2d4xL.jpg",
          width: 400,
          height: 400);
      artist_text = "Honey Singh";
    }
    if (get_string == '3') {
      text = "Same Beef";
      image = Image.network(
        "https://static.toiimg.com/thumb/msid-65821941,width-1200,height-900,resizemode-4/.jpg",
        width: 400,
        height: 400,
      );
      artist_text = "Sidhu Moosewala";
    }
    if (get_string == '4') {
      text = "East Side Flow";
      image = Image.network(
        "https://a10.gaanacdn.com/images/albums/95/2450195/crop_480x480_1552993303_2450195.jpg",
        width: 400,
        height: 400,
      );
      artist_text = "Sidhu Moosewala";
    }
  }

  top_bar() {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 30.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_arrow_down_rounded,
                color: Colors.white, size: 40),
          ),
          const SizedBox(
            width: 80,
          ),
          Column(
            children: [
              const Text(
                "PLAYING FROM ALBUM",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const Icon(Icons.more_vert_rounded, color: Colors.white, size: 30)
        ],
      ),
    );
  }

  image_part() {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 40), child: image);
  }

  title_part() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                  ),
                ),
                Text(
                  artist_text,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.favorite_border_rounded,
                  color: Colors.white, size: 30),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              top_bar(),
              const SizedBox(
                height: 40,
              ),
              image_part(),
              const SizedBox(
                height: 20,
              ),
              title_part(),
              const SizedBox(
                height: 10,
              ),
              AudioFile(),
            ],
          ),
        ),
      ),
    );
  }
}
