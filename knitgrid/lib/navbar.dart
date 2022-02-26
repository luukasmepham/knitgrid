import 'package:flutter/material.dart';

import 'grid/layout/tools.dart';
import 'counter/counter.dart';
import 'gallery/gallery.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selection = 0;
  final List<Widget> pages = <Widget>[
    Tools(),
    const Counter(),
    Gallery(),
  ];
  void onTap(int index) {
    setState(() {
      selection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(selection),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Gallery',
          ),
        ],
        currentIndex: selection,
        selectedItemColor: Colors.blue,
        onTap: onTap,
      ),
    );
  }
}
