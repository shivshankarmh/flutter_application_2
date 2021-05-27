import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.call)),
            title: Text(
              'Brad Pitt',
              style: GoogleFonts.lato(fontSize: 24),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.call),
            ),
            title: Text(
              'Will Smith',
              style: GoogleFonts.lato(fontSize: 24),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.call),
            ),
            title: Text(
              'Captian America',
              style: GoogleFonts.lato(fontSize: 24),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.call),
            ),
            title: Text(
              'Jackson',
              style: GoogleFonts.lato(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
