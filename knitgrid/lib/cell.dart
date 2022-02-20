import 'package:flutter/material.dart';

import 'values.dart';

class Cell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> {
  bool pressAttention = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeOfCell,
      width: sizeOfCell,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: pressAttention ? Colors.blue : Colors.white,
            border: Border.all(
              color: Colors.blue,
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        onPressed: () => setState(() => pressAttention = !pressAttention),
      ),
    );
  }
}
