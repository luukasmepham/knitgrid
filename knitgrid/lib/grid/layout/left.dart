import 'package:flutter/material.dart';

import '../../values.dart';

class Left extends StatefulWidget {
  late var controller;

  Left({
    required this.controller,
  });

  @override
  State<StatefulWidget> createState() => _LeftState();
}

class _LeftState extends State<Left> {
  @override
  Widget build(BuildContext context) {
    var controller = widget.controller;
    return Container(
      width: MediaQuery.of(context).size.width * 0.06,
      color: Colors.white,
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        itemCount: sizeOfGrid.toInt() * 2,
        itemBuilder: (context, i) {
          i = i + 1;
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.1,
              ),
            ),
            height: (MediaQuery.of(context).size.width -
                    (0.09 * MediaQuery.of(context).size.width)) /
                sizeOfGrid,
            child: Align(
              alignment: Alignment.center,
              child: Text("$i"),
            ),
          );
        },
      ),
    );
  }
}
