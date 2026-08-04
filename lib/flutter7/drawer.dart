import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter7/input.dart';

class DrawerFlutter7 extends StatefulWidget {
  const DrawerFlutter7({super.key});

  @override
  State<DrawerFlutter7> createState() => _DrawerFlutter7State();
}

class _DrawerFlutter7State extends State<DrawerFlutter7> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    setState(() {
      _selectedBottom = index;
    });
    Navigator.pop(context);
  }

  final List<Widget> _widgetOptions = const [
    Input(section: 'terms'),
    Input(section: 'mode'),
    Input(section: 'category'),
    Input(section: 'date'),
    Input(section: 'reminder'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Input Interaktif",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "MENU INPUT",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text("Syarat & Ketentuan"),
              onTap: () => changeBottom(0),
            ),

            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Mode Tampilan"),
              onTap: () => changeBottom(1),
            ),

            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Kategori Produk"),
              onTap: () => changeBottom(2),
            ),

            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Pilih Tanggal"),
              onTap: () => changeBottom(3),
            ),

            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Atur Pengingat"),
              onTap: () => changeBottom(4),
            ),
          ],
        ),
      ),

      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
