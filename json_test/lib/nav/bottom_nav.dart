import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:json_test/nav/nave.dart';
import 'package:json_test/pages/albums.dart';
import 'package:json_test/pages/home.dart';
import 'package:json_test/pages/images.dart';
import 'package:json_test/pages/post.dart';
import 'package:json_test/pages/users.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var pages = [
    const Home(),
    const Users(),
    Post(),
    const Images(),
    const Albums(),
  ];
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Real World")),
      // body: SizedBox.expand(
      //   child: PageView(
      //     controller: _pageController,
      //     onPageChanged: (index) {
      //       setState(() => _currentIndex = index);
      //     },
      //     children: <Widget>[
      //       Container(
      //         color: Colors.blueGrey,
      //       ),
      //       Container(
      //         color: Colors.red,
      //       ),
      //       Container(
      //         color: Colors.green,
      //       ),
      //       Container(
      //         color: Colors.blue,
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            activeColor: Colors.teal,
          ),
          BottomNavyBarItem(
              title: Text('Item Two'),
              icon: Icon(Icons.apps),
              activeColor: Colors.teal),
          BottomNavyBarItem(
              title: Text('Item Three'),
              icon: Icon(Icons.chat_bubble),
              activeColor: Colors.teal),
          BottomNavyBarItem(
              title: Text('Item Four'),
              icon: Icon(Icons.settings),
              activeColor: Colors.teal),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
