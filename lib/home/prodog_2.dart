// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class SecoundTab extends StatelessWidget {
  const SecoundTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
