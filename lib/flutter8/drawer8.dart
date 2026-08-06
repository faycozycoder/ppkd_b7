import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter8/tugas_level1.dart';
import 'package:ppkd_b7/flutter8/tugas_level2.dart';
import 'package:ppkd_b7/flutter8/tugas_level3.dart';

class DrawerTugas8 extends StatefulWidget {
  const DrawerTugas8({super.key});

  @override
  State<DrawerTugas8> createState() => _DrawerTugas8State();
}

class _DrawerTugas8State extends State<DrawerTugas8> {
  // ignore: unused_field
  final List<Widget> _widgetOptions = [
    ListData1(),
    ListDataLevel2(),
    ListtData3(),
  ];
  // ignore: unused_field
  int _selectedBottom = 0;

  void changeBottom(int index) {
    setState(() {
      _selectedBottom = index;
    });
    Navigator.pop(context);
  }

  // Use the selected index to provide the section to InputDetailTugas7

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
              decoration: BoxDecoration(color: Colors.red),
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
              title: const Text("Tugas 9 Flutter Level 1"),
              onTap: () => changeBottom(0),
            ),

            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Tugas 9 Flutter Level 2"),
              onTap: () => changeBottom(1),
            ),

            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Tugas Flutter Level 3"),
              onTap: () => changeBottom(2),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
