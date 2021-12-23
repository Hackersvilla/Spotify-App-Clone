import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  first_text() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 280, 0),
      child: SizedBox(
        child: Text(
          "Search",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.raleway().fontFamily,
          ),
        ),
      ),
    );
  }

  search_bar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Row(
          children: [
            //search bar
            Container(
              width: 320,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  //Icon
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),

                  //for text
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Artists, songs, or podcasts",
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontSize: 17)),
                  )
                ],
              ),
            ),

            //for Icon
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.mic_none_rounded,
                color: Colors.white,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }

  top_genre() {
    return SizedBox(
      child: Column(
        children: [
          //text
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "Your top genres ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // for Container
          make_cards("Pop", "Hip_Hop", const Color(0xff8c67ac),
              const Color(0xffb95d06)),
          const SizedBox(
            height: 20,
          ),
          make_cards("Bollywood", "Folk Songs", const Color(0xff8b1932),
              const Color(0xff1e3264))
        ],
      ),
    );
  }

  popular_songs() {
    return SizedBox(
      child: Column(
        children: [
          //text
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Popular podcast categories ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.raleway().fontFamily),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // for Container
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 180,
                height: 120,
                decoration: BoxDecoration(
                    color: const Color(0xff1e3264),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Knowledge",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.raleway().fontFamily),
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xffe13300),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Crime & Thriller",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.raleway().fontFamily),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            first_text(),
            const SizedBox(
              height: 30,
            ),
            search_bar(),
            const SizedBox(
              height: 30,
            ),
            top_genre(),
            const SizedBox(
              height: 30,
            ),
            popular_songs()
          ],
        ),
      ),
    );
  }
}

make_cards(String text1, String text2, var color1, var color2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 180,
        height: 120,
        decoration: BoxDecoration(
            color: color1, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.raleway().fontFamily),
          ),
        ),
      ),
      Container(
        width: 180,
        height: 120,
        decoration: BoxDecoration(
            color: color2, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text2,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.raleway().fontFamily),
          ),
        ),
      )
    ],
  );
}
