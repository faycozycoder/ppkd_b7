import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListData1 extends StatelessWidget {
  ListData1({super.key});

  List<String> makananRingan = const [
    'RITZ',
    'Topoki Snack',
    'Popcorn',
    'Mie Kremez',
    'Chitato',
    'Topoki',
    'Momogi',
    'Chiki',
    'Syangkuy',
    'Banana Snack',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: makananRingan.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              makananRingan[index],
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
