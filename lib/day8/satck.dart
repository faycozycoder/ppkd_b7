import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Day 8"), backgroundColor: Colors.pink),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,

            children: [
              Container(color: Colors.red, height: 400, width: 400),
              Container(color: Colors.red, height: 300, width: 300),
              Container(color: Colors.red, height: 200, width: 200),
              Positioned(
                top: 50,
                left: 50,
                child: Text(
                  "Di Atas Kotak",
                  style: TextStyle(color: Colors.lime),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,

            children: [
              Container(color: Colors.red, height: 400, width: 400),
              Container(color: Colors.red, height: 300, width: 300),
              Container(color: Colors.red, height: 200, width: 200),
              Positioned(
                top: 50,
                left: 50,
                child: Text(
                  "Di Atas Kotak",
                  style: TextStyle(color: Colors.lime),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
