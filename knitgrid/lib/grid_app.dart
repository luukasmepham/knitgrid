import 'package:flutter/material.dart';

import 'top.dart';
import 'grid.dart';
import 'values.dart';

class Grid_App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Grid_AppState();
}

class _Grid_AppState extends State<Grid_App> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sizeOfCell * sizeOfGrid + sizeOfCell,
        height: sizeOfCell * sizeOfGrid + sizeOfCell,
        child: Column(
          children: [
            Top(),
            Expanded(
              child: Grid(),
            ),
          ],
        ),
      ),
    );
  }
}
