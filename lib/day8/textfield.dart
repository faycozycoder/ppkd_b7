import 'package:flutter/material.dart';

class TextFieldDay8 extends StatelessWidget {
  const TextFieldDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Day 8"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Maukan Nama",
              fillColor: Colors.amber,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
