import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLocation extends StatefulWidget {
  const HomeLocation({super.key});

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {
  String dropdownValue = 'Location 1';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 45.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.teal.shade100),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.teal,
                ),
                iconSize: 30.h,
                style: const TextStyle(color: Colors.black54, fontSize: 16),
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                isExpanded: true,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Location 1',
                    child: Text('Location 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Location 2',
                    child: Text('Location 2'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Location 3',
                    child: Text('Location 3'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
