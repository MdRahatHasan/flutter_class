import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/ment_one.png',
          // width: 500,
          fit: BoxFit.fill,
        ),
        const Center(
          child: Column(children: [
            Text(
              'Hey my name is Rahat. I am learnign app developar!',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                'I\'d like to know how to center the contents of a  widget vertically and horizontally in Flutter. I only know how to center the widget itself using but not the content itself. By default, it\'s aligned to the left. In Android, I believe the property of a TextView that achieves this is called gravity.')
          ]),
        ),
      ],
    );
  }
}
