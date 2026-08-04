import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter7/Input_detail.dart';
import 'package:ppkd_b7/flutter7/drawer.dart';
import 'package:ppkd_b7/flutter7/input.dart';

class BottomNavFlutter7 extends StatefulWidget {
  const BottomNavFlutter7({super.key});

  @override
  State<BottomNavFlutter7> createState() => _BottomNavFlutter7State();
}

class _BottomNavFlutter7State extends State<BottomNavFlutter7> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    DrawerFlutter7(),
    Input(section: 'terms'),
    InputDetailPage(section: 'terms'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Drawer'),
          BottomNavigationBarItem(icon: Icon(Icons.input), label: 'Input'),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new),
            label: 'Detail',
          ),
        ],
      ),
    );
  }
}
