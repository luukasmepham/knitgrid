import 'package:flutter/material.dart';

import '../../repositories/data_repository.dart';
import '../../models/saves.dart';
import '../../values.dart';

import '../widgets/colours.dart';
import 'body.dart';

final DataRepository repository = DataRepository();

class Tools extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    Body gridBody = Body();
    return Center(
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          color: Colors.white,
          child: Row(children: [
            Expanded(
              child: TextField(
                onChanged: (text) {
                  nameOfSave = text;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter name',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                final newSave = Saves(
                  nameOfSave,
                  gridToStorage: savedGrid,
                  currentValue: currentValue,
                  sizeOfGrid: sizeOfGrid,
                  totalSizeOfGrid: totalGridSize,
                );
                repository.addSave(newSave);
              },
              child: Text('Save'),
            ),
            Slider(
                value: currentValue,
                max: 24,
                min: 2,
                divisions: 22,
                label: currentValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    currentValue = value;
                    sizeOfGrid = value;
                    totalGridSize =
                        value.toInt() * (value.toInt() + value.toInt());
                    var newSavedGrid = List<dynamic>.filled(totalGridSize, 6);
                    savedGrid = newSavedGrid;
                    gridBody = Body();
                  });
                }),
            Expanded(
              child: Colours(),
            ),
          ]),
        ),
        Expanded(
          child: gridBody,
        ),
      ]),
    );
  }
}
