import 'package:flutter/material.dart';
import 'package:flutter_application_2/btmnavigation.dart';
//import 'package:flutter_application_2/callsreen.dart';
//import 'package:flutter_application_2/settingsscreen.dart';
//import 'package:flutter_application_2/threecolumn.dart';
//import 'package:flutter_application_2/recentchatscreen.dart';
import 'package:flutter_application_2/threecolumn.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Transform(
              transform: Matrix4.translationValues(-10.0, -15.0, 0.0),
              child: Icon(
                Icons.bubble_chart_rounded,
                color: Colors.blue[200],
                size: 65,
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: Text(
                'Chats',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ],
        ),
        actions: [
          Transform(
            transform: Matrix4.translationValues(-15.0, -20.0, 0.0),
            child: IconButton(
                icon: Icon(
                  Icons.pending,
                  color: Colors.black45,
                  size: 30,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: ThreeColumn(),
      bottomNavigationBar: Btm_Navigation(),
    );
  }
}
