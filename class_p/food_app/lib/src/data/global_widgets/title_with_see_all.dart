import 'package:flutter/material.dart';

class TitleWithSeeAll extends StatelessWidget {
  TitleWithSeeAll({
    super.key,
    this.title,
    this.buttonText,
    this.onPress,
  });
  String? title;
  dynamic onPress;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: const TextStyle(fontSize: 28),
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            '$buttonText',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.teal,
            ),
          ),
        ),
      ],
    );
  }
}
