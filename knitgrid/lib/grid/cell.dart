import 'package:flutter/material.dart';

class Cell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: pressAttention ? Colors.blue : Colors.white,
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.blue,
              width: 1,
            ),
          ),
        ),
        onPressed: () => setState(() => pressAttention = !pressAttention),
      ),
    );
  }
}
