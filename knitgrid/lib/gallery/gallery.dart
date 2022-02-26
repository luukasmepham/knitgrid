import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../repositories/data_repository.dart';
import '../../models/saves.dart';

import 'gallery_cell.dart';
import '../values.dart';

final DataRepository repository = DataRepository();

class Gallery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(children: [
          StreamBuilder<QuerySnapshot>(
            stream: repository.getStream(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<DocumentSnapshot> documents = snapshot.data!.docs;
                return Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: MediaQuery.of(context).size.width * 0.425,
                  child: ListView.builder(
                      itemCount: documents.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot doc = documents[index];
                        Saves newSave = Saves(doc['name'],
                            gridToStorage: doc['grid'],
                            currentValue: doc['slider'],
                            sizeOfGrid: doc['size'],
                            totalSizeOfGrid: doc['totalSize']);

                        String name = newSave.nameToStorage;
                        List<dynamic> grid = newSave.gridToStorage;
                        double sizeGrid = newSave.sizeOfGrid;
                        int gridSize = sizeGrid.toInt();
                        double slider = newSave.currentValue;

                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(children: [
                              Text(name),
                              Expanded(
                                child: GridView.count(
                                  crossAxisCount: gridSize,
                                  children: List.generate(
                                      gridSize * (gridSize + gridSize),
                                      (index) {
                                    return MaterialButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        savedGrid = grid;
                                        currentValue = slider;
                                        totalGridSize = gridSize;
                                        sizeOfGrid = sizeGrid;
                                        nameOfSave = name;
                                      },
                                      child: GalleryCell(
                                        colorIndex: grid[index],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ]),
                          ),
                        );
                      }),
                );
              } else {
                return Text('Database is empty');
              }
            },
          ),
        ]),
      ),
    );
  }
}
