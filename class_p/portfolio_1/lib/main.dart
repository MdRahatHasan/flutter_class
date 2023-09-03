import 'package:flutter/material.dart';
import 'package:portfolio_1/src/about.dart';
import 'package:portfolio_1/src/home.dart';
import 'package:portfolio_1/src/menu.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileApp(),
    ));

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  var pages = [
    const HomePage(),
    const Menu(),
    const About(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('About'),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.only(top: 50),
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(color: Colors.amber),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'asset/diamond.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 25,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20 / 2),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.only(top: 50),
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 153, 152, 152)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'asset/coal.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                            left: 25,
                            top: 25,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20 / 2),
                                ),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_alarm,
            ),
            label: 'menu',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: 'About'),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
