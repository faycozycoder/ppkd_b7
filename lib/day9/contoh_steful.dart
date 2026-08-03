import 'package:flutter/material.dart';

class ContohSteful extends StatefulWidget {
  const ContohSteful({super.key});

  @override
  State<ContohSteful> createState() => _ContohStefulState();
}

class _ContohStefulState extends State<ContohSteful> {
  int counter = 1;
  bool showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),

          ElevatedButton(
            onPressed: () {
              debugPrint('klik saya');
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Kotak Disentuh')));
            },
            child: Text("Klik Saya"),
          ),

          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              debugPrint('Ikon Kilk');
            },
          ),

          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: Text('Baca Selengkapnya'),
          ),

          GestureDetector(
            onTap: () {
              debugPrint('Disentuh Sekali');
            },
            onDoubleTap: () {
              debugPrint('Disentuh Dua Kali');
            },
            onLongPress: () {
              debugPrint('Tahan Lama');
            },
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text('Tekan Saya'),
            ),
          ),

          FloatingActionButton(
            onPressed: () {
              debugPrint('FAB Ditekan');
            },
            tooltip: "Tambah Data",
            child: Icon(Icons.add),
          ),

          InkWell(
            onTap: () {
              debugPrint('Gambar Di Kilk');
            },
            child: Text('Hai'),
          ),

          TextButton(
            onPressed: () {
              setState(() {
                showImage = !showImage;
              });
            },
            child: Text(showImage ? "Sembuyikan Gambar" : "lihat Gambar"),
          ),
          if (showImage)
            Image.network(
              "https://picsum.photos//200",
              height: 120,
              width: 120,
            ),
        ],
      ),
    );
  }
}
