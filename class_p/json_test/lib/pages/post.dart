import 'package:flutter/material.dart';

import 'package:json_test/model/user.dart';
import 'package:json_test/pages/user_profile.dart';
import 'package:json_test/services/user_api.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          // final color = user.gender == 'male'
          //     ? Colors.teal.shade500
          //     : Colors.teal.shade900;
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => UserProfile(
                          name: user.name.first,
                          image: user.picture.large,
                          email: user.email,
                          number: user.phone,
                          fullName: user.fullName,
                        )),
              );
            },
            textColor: Colors.white,
            tileColor: Colors.teal.shade600,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(user.picture.thumbnail),
            ),
            title: Text(user.fullName),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
