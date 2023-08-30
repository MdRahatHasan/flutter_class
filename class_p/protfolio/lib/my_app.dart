import 'package:flutter/material.dart';
import 'package:protfolio/about.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: Portfolio(),
      ),
    );
  }
}
