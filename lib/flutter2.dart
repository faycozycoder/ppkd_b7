import 'package:flutter/material.dart';

class Flutter2 extends StatelessWidget {
  const Flutter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Toko"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: Text(
                "Harumony Mystic Emporium",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.pink.shade100,
              child: const Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Text("harumony.id"),
                ],
              ),
            ),

            const SizedBox(height: 15),

            const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 5),
                Text("0812-3456-7890"),

                Spacer(),

                Icon(Icons.location_on),
                SizedBox(width: 5),
                Text("Jakarta"),
              ],
            ),

            const SizedBox(height: 25),

            Row(
              children: [

                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "300\nProject",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        "4.8\nSertifikat",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Harumany Mystic Emporium is a creative space where imagination "
                "meets mystery. It is an emporium dedicated to curating unique, "
                "enchanting experiences and showcasing wondrous creations that ignite a "
                "sense of awe.",
                textAlign: TextAlign.justify,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 180,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/image/gambar2.jpg",
                width: 180,
                height: 180,
              ),
            )
          ],
        ),
      ),
    );
  }
}