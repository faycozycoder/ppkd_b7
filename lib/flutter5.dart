import 'package:flutter/material.dart';

class Flutter5 extends StatefulWidget {
  const Flutter5({super.key});

  @override
  State<Flutter5> createState() => _Flutter5State();
}

class _Flutter5State extends State<Flutter5> {
  bool showText = false;
  bool favorite = false;
  bool showDescription = false;

  int counter = 25;

  @override
  Widget build(BuildContext context) {
    debugPrint("Build Berjalan");
    debugPrint("$counter");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Interaksi Flutter",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
          debugPrint("$counter");
        },
        child: const Icon(Icons.remove),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text("Ini tentang ElevatedButton"),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: const Text("Klik Saya!"),
            ),

            showText
                ? const Text(
                    "Halo, Saya Developer!",
                    style: TextStyle(fontSize: 20),
                  )
                : const SizedBox(),

            const SizedBox(height: 20),

            const Text("Ini tentang IconButton"),

            IconButton(
              onPressed: () {
                setState(() {
                  favorite = !favorite;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: favorite ? Colors.red : Colors.grey,
                size: 40,
              ),
            ),

            Text(favorite ? "Disukai!" : "Belum Disukai"),

            const SizedBox(height: 20),

            const Text("Ini tentang TextButton"),

            TextButton(
              onPressed: () {
                setState(() {
                  showDescription = !showDescription;
                });
              },
              child: const Text("Lihat Deskripsi"),
            ),

            showDescription
                ? const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Flutter adalah framework dari Google untuk membuat aplikasi Android, iOS, Web, dan Desktop.",
                      textAlign: TextAlign.center,
                    ),
                  )
                : const SizedBox(),

            const SizedBox(height: 20),

            const Text("Ini tentang InkWell"),

            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                debugPrint("Kotak Disentuh");

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Kotak Disentuh")));
              },
              child: Container(
                width: 400,
                height: 100,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Sentuh Kotak Ini",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text("Ini tentang GestureDetector"),

            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
                debugPrint("Ditekan Sekali");
              },
              onDoubleTap: () {
                setState(() {
                  counter += 2;
                });
                debugPrint("Ditekan Dua Kali");
              },
              onLongPress: () {
                setState(() {
                  counter += 3;
                });
                debugPrint("Tahan Lama");
              },
              child: Container(
                width: 400,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Angka : $counter",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text("Tap = +1"),
            const Text("Double Tap = +2"),
            const Text("Long Press = +3"),
          ],
        ),
      ),
    );
  }
}
