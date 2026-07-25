import 'package:flutter/material.dart';

class Singlechildscrollview extends StatelessWidget {
  const Singlechildscrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Scroll View"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(color: Colors.blue, height: 200, width: 200),
                  Container(color: Colors.red, height: 20, width: 200),
                  Container(color: Colors.green, height: 200, width: 200),
                  Container(color: Colors.orange, height: 200, width: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
