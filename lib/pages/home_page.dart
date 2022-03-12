import 'package:flutter/material.dart';
import 'package:game_space/pages/friends.dart';
import 'package:game_space/pages/profile_setup.dart';
import 'package:game_space/pages/profile_tab.dart';
import 'package:game_space/pages/search.dart';
import 'package:game_space/pages/sign_up.dart';
import 'package:game_space/pages/watch.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GameSpace',)),
      body: _pages.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Friends'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_outlined),
              label: 'Watch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
        ],
        currentIndex: _selectedindex,
        onTap: _onTapped,
      ),
    );
  }
  void _onTapped(int index)
  {
    setState(() {
      _selectedindex = index;
    });
  }
  List _pages = [
    FriendsList(),
    SearchBar(),
    WatchStream(),
    ProfileTab(),
  ];
}