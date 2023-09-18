import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  String name, email, image, number, fullName;
  UserProfile({
    super.key,
    required this.email,
    required this.image,
    required this.name,
    required this.number,
    required this.fullName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(image),
            ),
            Text(
              fullName,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SSP',
                fontSize: 20,
                color: Colors.white60,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 180.0,
              child: Divider(color: Colors.teal.shade100),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text(
                  number,
                  style: TextStyle(
                      fontFamily: 'SSP',
                      color: Colors.teal.shade900,
                      fontSize: 18),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                  size: 20,
                ),
                title: Text(
                  email,
                  style: TextStyle(
                      fontFamily: 'SSP',
                      color: Colors.teal.shade900,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
