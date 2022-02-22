import 'package:flutter/material.dart';

import 'top.dart';
import 'body.dart';

class Grid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridState();
}

class _GridState extends State<Grid> {
  double _currentSliderValue = 6;
  double sizeOfGrid = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width > 1000
            ? MediaQuery.of(context).size.width * 0.5
            : 500,
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.white,
            child: Slider(
              value: _currentSliderValue,
              max: 20,
              min: 2,
              divisions: 18,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  sizeOfGrid = value;
                });
              },
            ),
          ),
          Top(
            sizeOfGrid: sizeOfGrid,
          ),
          Expanded(
            child: Body(
              sizeOfGrid: sizeOfGrid,
            ),
          ),
        ]),
      ),
    );
  }
}
