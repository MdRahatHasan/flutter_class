import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuBox extends StatelessWidget {
  MenuBox({super.key, required this.menuIcon, required this.menuTitle});
  String menuIcon, menuTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 74.h,
          width: 74.h,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: SvgPicture.asset(
              menuIcon,
              width: 55.w,
              color: Colors.teal,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(menuTitle)
      ],
    );
  }
}
