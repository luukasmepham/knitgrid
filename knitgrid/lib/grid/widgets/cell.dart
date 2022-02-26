import 'package:flutter/material.dart';

import '../../values.dart';

class Cell extends StatefulWidget {
  late int cellIndex;
  late var colorIndex;

  Cell({
    required this.cellIndex,
    required this.colorIndex,
  });

  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> {
  late var cellColor;
  late var cellIndex;
  late var colorIndex;

  @override
  void initState() {
    super.initState();

    cellIndex = widget.cellIndex;
    colorIndex = widget.colorIndex;

    switch (colorIndex) {
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
  }

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
              width: 0.6,
            ),
          ),
        ),
        onPressed: () => setState(() {
          switch (selectedColor) {
            case 1:
              {
                cellColor = Colors.blue;
                savedGrid[cellIndex] = 1;
              }
              break;

            case 2:
              {
                cellColor = Colors.green;
                savedGrid[cellIndex] = 2;
              }
              break;

            case 3:
              {
                cellColor = Colors.red;
                savedGrid[cellIndex] = 3;
              }
              break;

            case 4:
              {
                cellColor = Colors.yellow;
                savedGrid[cellIndex] = 4;
              }
              break;

            case 5:
              {
                cellColor = Colors.purple;
                savedGrid[cellIndex] = 5;
              }
              break;

            case 6:
              {
                cellColor = Colors.white;
                savedGrid[cellIndex] = 6;
              }
              break;

            case 7:
              {
                cellColor = Colors.black;
                savedGrid[cellIndex] = 7;
              }
              break;

            default:
              {
                cellColor = Colors.white;
                savedGrid[cellIndex] = 6;
              }
              break;
          }
          print(savedGrid);
        }),
      ),
    );
  }
}
