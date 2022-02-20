import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'values.dart';
import 'cell.dart';

class Grid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridState();
}

class _GridState extends State<Grid> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _left;
  late ScrollController _grid;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _left = _controllers.addAndGet();
    _grid = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _left.dispose();
    _grid.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: sizeOfCell,
        child: ListView.builder(
          controller: _left,
          itemCount: sizeOfGrid,
          itemBuilder: (context, i) {
            i = i + 1;
            return Container(
              width: sizeOfCell,
              height: sizeOfCell,
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Text("$i"),
              ),
            );
          },
        ),
      ),
      Expanded(
        child: GridView.count(
          controller: _grid,
          crossAxisCount: sizeOfGrid,
          children: List.generate(sizeOfGrid * sizeOfGrid, (index) {
            return Cell();
          }),
        ),
      ),
    ]);
  }
}
