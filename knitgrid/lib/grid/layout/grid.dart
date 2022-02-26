import 'package:flutter/material.dart';

import '../../values.dart';

import '../widgets/cell.dart';

class Grid extends StatefulWidget {
  late var controller;

  Grid({
    required this.controller,
  });

  @override
  State<StatefulWidget> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    var controller = widget.controller;
    return GridView.count(
      controller: controller,
      crossAxisCount: sizeOfGrid.toInt(),
      children: List.generate(
          sizeOfGrid.toInt() * (sizeOfGrid.toInt() + sizeOfGrid.toInt()),
          (index) {
        return Cell(
          cellIndex: index,
          colorIndex: savedGrid[index],
        );
      }),
    );
  }
}
