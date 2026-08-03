import 'package:flutter/material.dart';
import 'package:ppkd_b7/day10/image.dart';
import 'package:ppkd_b7/day11/navigator.dart';
import 'package:ppkd_b7/day13/checbook.dart';
import 'package:ppkd_b7/day6/expanded.dart';
import 'package:ppkd_b7/day8/satck.dart';

class DrawerDay13 extends StatefulWidget {
  const DrawerDay13({super.key});

  @override
  State<DrawerDay13> createState() => _DrawerDay13State();
}

class _DrawerDay13State extends State<DrawerDay13> {
  int _SelectedBottom = 0;

  void changeBottom(int index) {
    _SelectedBottom = index;
    print("Ini adalah value dari $_SelectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    ExpandedDay6(),
    StackDay8(),
    ShowImageDay10(),
    InputWidgetDay13(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("School"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text("Bussines"),
              onTap: () {
                changeBottom(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.widgets),
              title: Text("Widget"),
              onTap: () {
                changeBottom(3);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_SelectedBottom),
    );
  }
}
