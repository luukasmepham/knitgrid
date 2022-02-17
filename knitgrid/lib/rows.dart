import 'package:flutter/material.dart';

import 'cells.dart';
import 'values.dart';

class Rows extends StatefulWidget {
  @override
  _RowsState createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: cellWidth,
        child: ListView(
          children: List.generate(maxNumber - 1, (index) {
            return Cells(
              color: Colors.blue,
            );
          }),
        ),
      ),
      Expanded(
        child: SizedBox(
          width: (maxNumber - 1) * cellWidth,
          child: ListView(
            children: List.generate(maxNumber - 1, (y) {
              return Row(
                  children: List.generate(maxNumber - 1, (x) {
                return Cells(
                  color: Colors.white,
                );
              }));
            }),
          ),
        ),
      ),
    ]);
  }
}
