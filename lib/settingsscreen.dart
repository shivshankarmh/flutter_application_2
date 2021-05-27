import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.supervisor_account),
          ),
          title: Text('Accounts',
              style: GoogleFonts.roboto(
                  fontSize: 24, fontWeight: FontWeight.w400)),
          subtitle: Text('hi Accounts here. you are in settingsscreen'),
          onTap: () {
            print('accounts');
          },
        ),
        new ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.notifications_rounded),
          ),
          title: Text('Notifications', style: GoogleFonts.roboto(fontSize: 24)),
          subtitle: Text('hi Notifications here. you are in settingsscreen'),
          onTap: () {
            print('Notifications');
          },
        ),
        new ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.live_help_rounded),
          ),
          title: Text('Help', style: GoogleFonts.roboto(fontSize: 24)),
          subtitle: Text('hi Help here. you are in settingsscreen'),
          onTap: () {
            print('Help');
          },
        ),
      ],
    );
  }
}
