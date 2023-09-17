import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
