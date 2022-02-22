import 'package:flutter/material.dart';

class Top extends StatefulWidget {
  late double sizeOfGrid;

  Top({
    required this.sizeOfGrid,
  });
  @override
  State<StatefulWidget> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    double sizeOfGrid = widget.sizeOfGrid;
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      child: Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.06,
          color: Colors.white,
          child: Container(
            color: Colors.white,
            child: const Align(
              alignment: Alignment.center,
              child: Text("0"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sizeOfGrid.toInt(),
              itemBuilder: (context, i) {
                i = i + 1;
                return Container(
                  color: Colors.white,
                  width: (MediaQuery.of(context).size.width -
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
        ),
      ]),
    );
  }
}
