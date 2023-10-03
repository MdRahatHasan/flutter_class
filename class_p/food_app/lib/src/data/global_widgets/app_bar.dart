import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
