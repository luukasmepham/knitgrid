import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyCH-5uPpatU7o_TVKxRitl0oLMg6TKg6Mw",
        authDomain: "knitgrid-eef04.firebaseapp.com",
        projectId: "knitgrid-eef04",
        storageBucket: "knitgrid-eef04.appspot.com",
        messagingSenderId: "749498311515",
        appId: "1:749498311515:web:aaefc4f2b53abaa814f07e",
        measurementId: "G-1YXYTV4WNV"),
  );
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
        body: const Navbar(),
      ),
    );
  }
}
