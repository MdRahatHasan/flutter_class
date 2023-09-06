import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_1/src/loginView.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: Center(
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  elevation: 0.0,
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.redAccent, Colors.pinkAccent],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 300.0,
                      minHeight: 50.0,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Join Our Community",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
