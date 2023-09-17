import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: const Center(
        child: Text('Albums'),
      ),
    );
  }
}
