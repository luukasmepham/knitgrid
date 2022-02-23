import 'dart:ui';

import 'package:flutter/material.dart';

import 'navbar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Knitgrid';

    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
        scrollbars: false,
      ),
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            title,
          ),
        ),
        body: Navbar(),
      ),
    );
  }
}
