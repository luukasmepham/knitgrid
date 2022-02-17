import 'package:flutter/material.dart';

const double cellWidth = 50;
var color = Colors.white;

class Cells extends StatelessWidget {
  Cells({
    required color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        width: cellWidth,
        height: cellWidth,
        color: color,
      ),
      onPressed: () {
        color = Colors.blue;
      },
    );
  }
}
