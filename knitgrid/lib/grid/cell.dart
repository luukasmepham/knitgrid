import 'package:flutter/material.dart';

import 'colorStatus.dart';

class Cell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> {
  var cellColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: cellColor,
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.blue,
              width: 1,
            ),
          ),
        ),
        onPressed: () => setState(() {
          switch (value) {
            case 1:
              {
                cellColor = Colors.blue;
              }
              break;

            case 2:
              {
                cellColor = Colors.green;
              }
              break;

            case 3:
              {
                cellColor = Colors.red;
              }
              break;

            case 4:
              {
                cellColor = Colors.yellow;
              }
              break;

            case 5:
              {
                cellColor = Colors.purple;
              }
              break;

            case 6:
              {
                cellColor = Colors.white;
              }
              break;

            case 7:
              {
                cellColor = Colors.black;
              }
              break;

            default:
              {
                cellColor = Colors.white;
              }
              break;
          }
        }),
      ),
    );
  }
}
