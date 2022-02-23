import 'package:flutter/material.dart';

import 'top.dart';
import 'body.dart';
import 'button.dart';

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
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          color: Colors.white,
          child: Row(children: [
            Slider(
              value: _currentSliderValue,
              max: 24,
              min: 2,
              divisions: 22,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  sizeOfGrid = value;
                });
              },
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Row(children: [
                    Expanded(
                        child: Button(
                      color: Colors.blue,
                      colorValue: 1,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.green,
                      colorValue: 2,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.red,
                      colorValue: 3,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.yellow,
                      colorValue: 4,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.purple,
                      colorValue: 5,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.white,
                      colorValue: 6,
                    )),
                    Expanded(
                        child: Button(
                      color: Colors.black,
                      colorValue: 7,
                    )),
                  ]),
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.03,
            ),
            child: ClipRect(
              child: InteractiveViewer(
                child: Column(children: [
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
            ),
          ),
        ),
      ]),
    );
  }
}
