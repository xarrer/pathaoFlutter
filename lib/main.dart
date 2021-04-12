import 'package:flutter/material.dart';
import 'package:pathaocloneapp/screens/bottom_bar_screens/history_bar.dart';
import 'package:pathaocloneapp/screens/bottom_bar_screens/inbox_bar.dart';
import 'package:pathaocloneapp/screens/bottom_bar_screens/settings_bar.dart';

import 'package:pathaocloneapp/screens/pathao_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black),
          headline2: TextStyle(color: Colors.black),
          headline3: TextStyle(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PathaoHomeWithBar(),
    );
  }
}

class PathaoHomeWithBar extends StatefulWidget {
  @override
  _PathaoHomeWithBarState createState() => _PathaoHomeWithBarState();
}

class _PathaoHomeWithBarState extends State<PathaoHomeWithBar> {
  int _selectedIndex = 0;

  final tabs = [
    PathaoHome(),
    InboxBar(),
    HistoryBar(),
    SettingsBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          // iconSize: 30.0,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  // color: Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                  // color: Colors.grey,
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  // color: Colors.grey,
                ),
                label: 'History'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                // color: Colors.grey,
              ),
              label: 'More',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
