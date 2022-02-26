import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'top.dart';
import 'left.dart';
import 'grid.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ** START - CONTROLLERS FOR LEFT COLUMN AND GRID **

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

  // ** END - CONTROLLERS FOR LEFT COLUMN AND GRID **

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.03,
      ),
      child: ClipRect(
        child: InteractiveViewer(
          child: Column(children: [
            Top(),
            Expanded(
              child: Row(children: [
                Left(
                  controller: _left,
                ),
                Expanded(
                  child: Grid(
                    controller: _grid,
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
