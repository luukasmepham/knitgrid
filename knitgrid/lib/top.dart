import 'package:flutter/material.dart';

import 'values.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeOfCell,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizeOfGrid + 1,
        itemBuilder: (context, i) {
          return Container(
            width: sizeOfCell,
            height: sizeOfCell,
            color: Colors.white,
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
