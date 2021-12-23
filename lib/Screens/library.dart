import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  mid_part() {
    return Container(
      child: Row(
        children: [
          /////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Playlists",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.raleway().fontFamily,
                        fontSize: 18),
                  ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Artists",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.raleway().fontFamily,
                        fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }

  top_part() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 60.0),
      child: SizedBox(
        child: Row(
          children: [
            //for avatar
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffb49bc8),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "H",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 20),
                ),
              ),
            ),

            // text
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Your Library",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    fontSize: 20),
              ),
            ),
            //for Icons
            const Padding(
                padding: EdgeInsets.only(left: 130.0),
                child:
                    Icon(Icons.search_rounded, color: Colors.white, size: 30)),

            const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Icon(Icons.add, color: Colors.white, size: 30)),
          ],
        ),
      ),
    );
  }

  recently_play() {
    return Container(
        child: Row(
      children: [
        ///////////////////
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30.0),
          child: SizedBox(
            child: Text(
              "Recently played",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily,
                  fontSize: 18),
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 200.0, top: 15.0),
          child: SizedBox(
              child: Icon(Icons.api_sharp, color: Colors.white, size: 30)),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          //top_part
          top_part(),
          const SizedBox(height: 20),
          mid_part(),
          const SizedBox(
            height: 5,
          ),
          recently_play(),
          const SizedBox(
            height: 20,
          ),
          make_fav_artist(
              "https://yt3.ggpht.com/ytc/AKedOLRasTNweqoHZMIw7JBq8d2Z4Aut-zN1ruGjmMTM_A=s900-c-k-c0x00ffffff-no-rj",
              "Sidhu Moose Wala"),
          make_fav_artist(
              "https://i.scdn.co/image/ab6761610000e5ebbcaa81573ce50363c856d9e4",
              "Ranjit Bawa"),
          make_fav_artist(
              "https://i.scdn.co/image/ab6761610000e5ebcdf6815ea892b7be64a3a0bf",
              "Amrit Maan"),
          make_fav_artist(
              "https://a10.gaanacdn.com/gn_img/artists/Dk9KNk23Bx/k9KNqJJbBx/size_xl_1638898900.jpg",
              "Arijit Singh"),
        ],
      )),
    );
  }
}

make_fav_artist(String img, String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
    child: SizedBox(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              img,
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 18),
                ),
                Text(
                  "Artists",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
