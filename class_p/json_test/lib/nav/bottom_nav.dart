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
    const Images(),
    Post(),
    const Albums(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          Stack(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 23,
                ),
              ),
              Positioned(
                top: 30,
                left: 24,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2, color: Colors.teal),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text('Home'),
            icon: const Icon(
              Icons.home_outlined,
              size: 30,
            ),
            activeColor: Colors.teal,
          ),
          BottomNavyBarItem(
            title: const Text('Shop'),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            activeColor: Colors.teal,
          ),
          BottomNavyBarItem(
            title: const Text('Search'),
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            activeColor: Colors.teal,
          ),
          BottomNavyBarItem(
            title: const Text('User'),
            icon: const Icon(
              Icons.people_outline,
              size: 30,
            ),
            activeColor: Colors.teal,
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
