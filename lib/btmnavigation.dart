import 'package:flutter/material.dart';

// ignore: camel_case_types
class Btm_Navigation extends StatefulWidget {
  Btm_Navigation({Key key}) : super(key: key);

  @override
  _Btm_NavigationState createState() => _Btm_NavigationState();
}

// ignore: camel_case_types
class _Btm_NavigationState extends State<Btm_Navigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_rounded),
          label: ('Explore'),
          backgroundColor: Colors.blue[200],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_camera_rounded),
          label: ('Camera'),
          backgroundColor: Colors.blue[200],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_outlined),
          label: ('Calls'),
          backgroundColor: Colors.blue[200],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: ('Settings'),
          backgroundColor: Colors.blue[200],
        )
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black87,
      iconSize: 25,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}
