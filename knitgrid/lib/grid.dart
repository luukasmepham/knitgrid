import 'package:flutter/material.dart';

import 'values.dart';
import 'cell.dart';

class Grid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: sizeOfGrid,
      children: List.generate(sizeOfGrid * sizeOfGrid, (index) {
        return Cell(
          color: Colors.white,
        );
      }),
    );
  }
}
