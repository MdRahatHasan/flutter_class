import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGreeting extends StatelessWidget {
  const HomeGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Yahya',
                  style: TextStyle(
                    fontSize: 30.h,
                    fontFamily: 'Pacifico',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'What do you want to eat?',
                  style: TextStyle(
                    fontSize: 18.h,
                    color: Colors.black54,
                  ),
                )
              ],
            );
  }
}