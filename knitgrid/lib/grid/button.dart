import 'package:flutter/material.dart';

import 'colorStatus.dart';

class Button extends StatefulWidget {
  var color;
  var colorValue;
  Button({
    required this.color,
    required this.colorValue,
  });

  @override
  State<StatefulWidget> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  var color;
  var colorValue;

  @override
  void initState() {
    super.initState();
    color = widget.color;
    colorValue = widget.colorValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          value = colorValue;
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
