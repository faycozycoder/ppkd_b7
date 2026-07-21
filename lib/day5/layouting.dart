import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Hello Batch 7'),
        centerTitle: true,
        actions: [Text("1"), Text("2")],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [Text("Hello Batch 7", 
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      
          Text('Hello Batch 7', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('Hello Batch 7', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('Hello Batch 7', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Icon(Icons.star),
          Row(children: [Icon(Icons.star), Text("Hello Batch 7")]),
        ],
      )
    );
  }
}