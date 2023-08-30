import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: const Center(
          child: Text("Hello World!"),
        ),
      ),
    ),
  );
}
