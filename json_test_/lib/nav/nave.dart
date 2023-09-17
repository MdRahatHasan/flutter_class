import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_test/pages/albums.dart';
import 'package:json_test/pages/home.dart';
import 'package:json_test/pages/images.dart';
import 'package:json_test/pages/post.dart';
import 'package:json_test/pages/users.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),
              color: Colors.teal,
              padding: EdgeInsets.only(top: 6),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  const Text(
                    'Rahat rar',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'rahatfps@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SSP',
                      fontSize: 16,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 180.0,
                    child: Divider(color: Colors.teal.shade100),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Images',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Images()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Users',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Users()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Post',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Post()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.album,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Albums',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => const Albums()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Column(
              children: [
                SizedBox(
                  height: 20.0,
                  width: 180.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Log-Out',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
