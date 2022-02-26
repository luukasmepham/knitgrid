import 'package:flutter/material.dart';

import '../../values.dart';

class GalleryCell extends StatefulWidget {
  late var colorIndex;

  GalleryCell({
    required this.colorIndex,
  });

  @override
  State<StatefulWidget> createState() => _GalleryCellState();
}

class _GalleryCellState extends State<GalleryCell> {
  late var cellColor;
  late var colorIndex;

  @override
  void initState() {
    super.initState();

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
      decoration: BoxDecoration(
        color: cellColor,
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.blue,
          width: 0.6,
        ),
      ),
    );
  }
}
