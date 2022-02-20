import 'package:flutter/material.dart';

import 'cell.dart';
import 'values.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: sizeOfCell,
        child: ListView(
          children: List.generate(sizeOfGrid - 1, (index) {
            return Cell();
          }),
        ),
      ),
      Expanded(
        child: SizedBox(
          width: (sizeOfGrid - 1) * sizeOfCell,
          child: ListView(
            children: List.generate(sizeOfGrid - 1, (y) {
              return Row(
                  children: List.generate(sizeOfGrid - 1, (x) {
                return Cell();
              }));
            }),
          ),
        ),
      ),
    ]);
  }
}
