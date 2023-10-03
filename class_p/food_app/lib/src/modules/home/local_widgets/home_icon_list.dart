import 'package:flutter/material.dart';
import 'package:json_test/src/data/global_widgets/menu_item.dart';

class IconLIst extends StatefulWidget {
  const IconLIst({super.key});

  @override
  State<IconLIst> createState() => _IconLIstState();
}

class _IconLIstState extends State<IconLIst> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuBox(
          menuIcon: 'assets/icons/heart.svg',
          menuTitle: 'Favorite',
        ),
        MenuBox(
          menuIcon: 'assets/icons/Tag.svg',
          menuTitle: 'Cheap',
        ),
        MenuBox(
          menuIcon: 'assets/icons/trend.svg',
          menuTitle: 'Trend',
        ),
        MenuBox(
          menuIcon: 'assets/icons/more.svg',
          menuTitle: 'More',
        ),
      ],
    );
  }
}
