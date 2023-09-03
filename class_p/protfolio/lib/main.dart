import 'package:flutter/material.dart';
import 'package:protfolio/my_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 203, 203, 203),
          title: const Text('About'),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
        ),
        body: const SingleChildScrollView(
          child: MyApp(
            Color.fromARGB(231, 255, 255, 255),
            Color.fromARGB(231, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}
