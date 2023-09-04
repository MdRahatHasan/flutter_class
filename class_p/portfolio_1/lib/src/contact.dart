import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contact Information',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20.0),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email: rahatfps@email.com'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone: +88 01780333990'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Address: 1234 Main St, City, Country'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
