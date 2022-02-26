import 'package:flutter/material.dart';

import 'button.dart';

class Colours extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColoursState();
}

class _ColoursState extends State<Colours> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Button(
        color: Colors.blue,
        colorValue: 1,
      )),
      Expanded(
          child: Button(
        color: Colors.green,
        colorValue: 2,
      )),
      Expanded(
          child: Button(
        color: Colors.red,
        colorValue: 3,
      )),
      Expanded(
          child: Button(
        color: Colors.yellow,
        colorValue: 4,
      )),
      Expanded(
          child: Button(
        color: Colors.purple,
        colorValue: 5,
      )),
      Expanded(
          child: Button(
        color: Colors.white,
        colorValue: 6,
      )),
      Expanded(
        child: Button(
          color: Colors.black,
          colorValue: 7,
        ),
      ),
    ]);
  }
}
