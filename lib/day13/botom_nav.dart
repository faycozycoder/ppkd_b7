import 'package:flutter/material.dart';
import 'package:ppkd_b7/day10/image.dart';
import 'package:ppkd_b7/day6/expanded.dart';
import 'package:ppkd_b7/day8/satck.dart';

class BotoomNavDay13 extends StatefulWidget {
  const BotoomNavDay13({super.key});

  @override
  State<BotoomNavDay13> createState() => _BotoomNavDay13State();
}

class _BotoomNavDay13State extends State<BotoomNavDay13> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [
    ExpandedDay6(),
    StackDay8(),
    ShowImageDay10(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
