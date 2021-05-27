import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/recentchatscreen.dart';
import 'package:flutter_application_2/callsreen.dart';
import 'package:flutter_application_2/settingsscreen.dart';

class ThreeColumn extends StatefulWidget {
  ThreeColumn({Key key}) : super(key: key);

  @override
  _ThreeColumnState createState() => _ThreeColumnState();
}

class _ThreeColumnState extends State<ThreeColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 800,
          height: 35,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Search Bar'),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //SearchBar(),
              DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: 'Call Log'),
                          Tab(text: 'Recent'),
                          Tab(text: 'Settings'),
                        ],
                      ),
                    ),
                    Container(
                      height: 252,
                      child: TabBarView(
                        children: [
                          CallScreen(),
                          ChatScreen(),
                          SettingsScreen(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
