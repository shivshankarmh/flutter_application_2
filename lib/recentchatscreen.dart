import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.account_circle),
          ),
          title: Text(
            'Wanda',
            style: GoogleFonts.lato(fontSize: 24),
          ),
          subtitle: Text('Hi, this is Brad Pitt'),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.account_circle),
          ),
          title: Text(
            'Jordan',
            style: GoogleFonts.lato(fontSize: 24),
          ),
          subtitle: Text('Hi, this is Jordan'),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.account_circle),
          ),
          title: Text('Jerry', style: GoogleFonts.lato(fontSize: 24)),
          subtitle: Text('Hi, this is Jerry'),
        ),
      ],
    );
  }
}
