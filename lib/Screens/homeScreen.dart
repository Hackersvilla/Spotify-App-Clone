import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_clone/Audio/audio_UI.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  starting_row() {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ////////////////////////////////
          Text(
            "Good Morning",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.raleway().fontFamily),
          ),

          ////////////////////////////////////////////////////////////////
          Container(
              child: Row(
            children: [
              Stack(
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 3,
                      left: 3,
                    ),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.refresh_rounded,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.settings_rounded,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ))
        ],
      ),
    );
  }

  /////////////////////////////////////////////////////////

  grid_view() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              make_recents(
                  "https://static.toiimg.com/thumb/msid-65819638,width-1200,height-900,resizemode-4/.jpg",
                  "Suit",
                  "Punjabi",
                  1,
                  context),
              const SizedBox(
                width: 20,
              ),
              make_recents(
                  "https://m.media-amazon.com/images/I/618NBd2d4xL.jpg",
                  "Desi",
                  "Kalakaar",
                  2,
                  context),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              make_recents(
                  "https://static.toiimg.com/thumb/msid-65821941,width-1200,height-900,resizemode-4/.jpg",
                  "Same",
                  "Beef",
                  3,
                  context),
              const SizedBox(
                width: 20,
              ),
              make_recents(
                  "https://a10.gaanacdn.com/images/albums/95/2450195/crop_480x480_1552993303_2450195.jpg",
                  "East Side",
                  "Flow",
                  4,
                  context),
            ],
          ),
        ],
      ),
    );
  }

  ///////////////////////////////////////////////////////
  artist_sec() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 120.0),
          child: SizedBox(
            child: Text(
              "Your Favorite artists",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              make_artist(
                  "https://yt3.ggpht.com/ytc/AKedOLRasTNweqoHZMIw7JBq8d2Z4Aut-zN1ruGjmMTM_A=s900-c-k-c0x00ffffff-no-rj",
                  "Sidhu Moosewala"),
              const SizedBox(
                width: 20,
              ),
              make_artist(
                  "https://i.scdn.co/image/ab6761610000e5ebbcaa81573ce50363c856d9e4",
                  "Ranjit Bawa"),
              const SizedBox(
                width: 20,
              ),
              make_artist(
                  "https://i.scdn.co/image/ab6761610000e5ebcdf6815ea892b7be64a3a0bf",
                  "Amrit Maan"),
              const SizedBox(
                width: 20,
              ),
              make_artist(
                  "https://static.statusqueen.com/tagcovers/thumbnail/karan-aujla-ringtone-72.jpg",
                  "Karan Aujla"),
            ]),
          ),
        )
      ],
    );
  }

  ///////////////////////////////////////////////////////
  popular_sec() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 170.0),
          child: SizedBox(
            child: Text(
              "Popular albums",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              make_popular(
                  "https://upload.wikimedia.org/wikipedia/en/c/ca/Moosetape.jpg",
                  "Moosetape"),
              const SizedBox(
                width: 20,
              ),
              make_popular(
                  "https://c.saavncdn.com/222/Raataan-Lambiyan-From-Shershaah--Hindi-2021-20210729181107-500x500.jpg",
                  "Rataan Lambiya"),
              const SizedBox(
                width: 20,
              ),
              make_popular(
                  "https://m.media-amazon.com/images/M/MV5BZWFiMjVlYTMtMzlhYy00MDcxLWFlNmEtMGJkNmRhNjE5N2ViXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
                  "Shiddat"),
              const SizedBox(
                width: 20,
              ),
              make_popular(
                  "https://i.scdn.co/image/ab67616d0000b27309426d9ae9d8d981735ebc5e",
                  "Ranjha")
            ]),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // starting row
            starting_row(),

            const SizedBox(
              height: 10,
            ),

            grid_view(),

            const SizedBox(
              height: 30,
            ),

            artist_sec(),

            const SizedBox(height: 30),

            popular_sec(),
          ],
        ),
      ),
    );
  }
}

make_recents(
    var image, String text1, String text2, int id, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.bottomToTop, child: AudioUI()));
    },
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      width: 180,
      height: 71,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.network(
              image,
              width: 90,
              height: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(text1,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: GoogleFonts.raleway().fontFamily)),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(text2,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: GoogleFonts.raleway().fontFamily)),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

make_artist(var image, String text) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          image,
          width: 150,
          height: 150,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.raleway().fontFamily),
      )
    ],
  );
}

make_popular(var image, String text) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          image,
          width: 150,
          height: 150,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.raleway().fontFamily),
      )
    ],
  );
}
