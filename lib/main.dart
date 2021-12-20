import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'MainScreen.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: MainScreen(),
      duration: 3000,
      imageSize: 300,
      imageSrc: "assets/image.png",
      backgroundColor: Colors.black,
    );
  }
}
