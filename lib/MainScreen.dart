import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/Screens/homeScreen.dart';
import 'package:spotify_clone/Screens/library.dart';
import 'package:spotify_clone/Screens/search.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = <Widget>[
    HomeScreen(),
    SearchScreen(),
    LibraryScreen()
  ];

  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            iconSize: 30.0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onTap,
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedIconTheme: const IconThemeData(color: Colors.white70),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(Icons.home_filled),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.search_rounded)),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(Icons.library_music_rounded),
                  ),
                  label: "Your Library")
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Container(child: _pages.elementAt(selectedIndex)));
  }
}
