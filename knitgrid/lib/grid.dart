import 'package:flutter/material.dart';

import 'columns.dart';
import 'rows.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Columns(),
        Expanded(
          child: Rows(),
        ),
      ],
    );
  }
}
