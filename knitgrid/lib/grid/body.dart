import 'package:flutter/material.dart';

import 'cell.dart';

class Body extends StatefulWidget {
  late double sizeOfGrid;

  Body({
    required this.sizeOfGrid,
  });
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double sizeOfGrid = widget.sizeOfGrid;
    return Container(
      child: Container(
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.06,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: sizeOfGrid.toInt(),
              itemBuilder: (context, i) {
                i = i + 1;
                return Container(
                  color: Colors.white,
                  height: (MediaQuery.of(context).size.width -
                          (0.06 * MediaQuery.of(context).size.width)) /
                      sizeOfGrid,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("$i"),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: sizeOfGrid.toInt(),
              children: List.generate(sizeOfGrid.toInt() * sizeOfGrid.toInt(),
                  (index) {
                return Cell();
              }),
            ),
          ),
        ]),
      ),
    );
  }
}
