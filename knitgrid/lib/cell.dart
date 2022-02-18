import 'package:flutter/material.dart';

import 'values.dart';

class Cell extends StatefulWidget {
  final dynamic color;

  Cell({
    required this.color,
  });

  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> {
  var color;

  @override
  void initState() {
    color = widget.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => setState(
        () => color = Colors.blue,
      ),
      child: Container(
        color: color,
      ),
    );
  }
}
