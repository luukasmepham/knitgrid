import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'cell.dart';

class Body extends StatefulWidget {
  late double sizeOfGrid;

  Body({
    required this.sizeOfGrid,
  });
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
    double sizeOfGrid = widget.sizeOfGrid;
    return Container(
      child: Container(
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.06,
            color: Colors.white,
            child: ListView.builder(
              controller: _left,
              scrollDirection: Axis.vertical,
              itemCount: sizeOfGrid.toInt(),
              itemBuilder: (context, i) {
                i = i + 1;
                return Container(
                  color: Colors.white,
                  height: (MediaQuery.of(context).size.width -
                          (0.06 * MediaQuery.of(context).size.width)) /
                      sizeOfGrid,
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
              crossAxisCount: sizeOfGrid.toInt(),
              children: List.generate(sizeOfGrid.toInt() * sizeOfGrid.toInt(),
                  (index) {
                return Cell();
              }),
            ),
          ),
        ]),
      ),
    );
  }
}
