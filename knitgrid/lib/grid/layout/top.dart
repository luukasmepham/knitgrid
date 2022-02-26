import 'package:flutter/material.dart';

import '../../values.dart';

class Top extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.1,
                    ),
                  ),
                  width: (MediaQuery.of(context).size.width -
                          (0.09 * MediaQuery.of(context).size.width)) /
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
