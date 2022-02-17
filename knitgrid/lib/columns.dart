import 'package:flutter/material.dart';

import 'cells.dart';
import 'values.dart';

class Columns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cellWidth,
      child: Row(
        children: <Widget>[
          Flexible(
            child: Cells(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
