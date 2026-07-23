import 'package:flutter/material.dart';

class Flutter1 extends StatelessWidget {
  const Flutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6DDF8),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 33, 33),
        title: const Text(
          "Profil Saya",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 20),

            Text(
              "Fatimah Falah Soebyanto",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 44, 27, 2),
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  "Jakarta, Indonesia",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),

            SizedBox(height: 8),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Seorang mahasiswa yang sedang belajar Flutter di PPKD Jakarta Pusat",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}