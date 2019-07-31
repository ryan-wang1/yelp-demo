import 'package:flutter/material.dart';
import 'main_page.dart';
import 'dart:async';

void main() async {
    runApp(new Yelp());
}

class Yelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage())));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // CircleAvatar(
                    //   backgroundColor: Colors.blueAccent,
                    //   radius: 80.0,
                    //   child: _image(),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                    ),
                    Text("Yelp App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: "Rajdhani"))
                  ],
                ))),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  Text(
                    "Food, made easy.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: "Rajdhani"),
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }

  _image() {
    return Image.asset('assets/Logo.png');
  }
}
