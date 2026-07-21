import 'package:flutter/material.dart';

class AppProject extends StatelessWidget {
  const AppProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Hello Batch 7'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Text('Hello Batch 7'),
          Text('Hello Batch 7'),
          Text('Hello Batch 7'),
        ],
      )
    );
  }
}