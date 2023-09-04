import 'package:flutter/material.dart';
import 'package:portfolio_1/src/about.dart';
import 'package:portfolio_1/src/home.dart';
import 'package:portfolio_1/src/menu.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          // ···
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfileApp(),
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
                height: 80,
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('asset/ment_1.png'),
                              radius: 30.0,
                            ),
                            Positioned(
                              top: 45,
                              left: 45,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20 / 2),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Title(
                            color: Colors.white,
                            child: TextButton(
                              child: const Text(
                                'Alexis',
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {},
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('asset/ment_1.png'),
                              radius: 30.0,
                            ),
                            Positioned(
                              top: 45,
                              left: 45,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20 / 2),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Title(
                            color: Colors.white,
                            child: TextButton(
                              child: const Text(
                                'Alexis',
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {},
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('asset/ment_1.png'),
                              radius: 30.0,
                            ),
                            Positioned(
                              top: 45,
                              left: 45,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20 / 2),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Title(
                            color: Colors.white,
                            child: TextButton(
                              child: const Text(
                                'Alexis',
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {},
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('asset/ment_1.png'),
                              radius: 30.0,
                            ),
                            Positioned(
                              top: 45,
                              left: 45,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15 / 2),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Title(
                            color: Colors.white,
                            child: TextButton(
                              child: const Text(
                                'Xine',
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {},
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
        currentIndex: currentIndex,
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
