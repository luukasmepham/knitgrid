import 'package:cloud_firestore/cloud_firestore.dart';

class Saves {
  final String nameToStorage;
  final List<dynamic> gridToStorage;
  final double sizeOfGrid;
  final int totalSizeOfGrid;

  final double currentValue;

  String? referenceId;

  Saves(
    this.nameToStorage, {
    required this.gridToStorage,
    required this.currentValue,
    required this.sizeOfGrid,
    required this.totalSizeOfGrid,
    this.referenceId,
  });

  factory Saves.fromSnapshot(DocumentSnapshot snapshot) {
    final newSave = Saves.fromJson(snapshot.data() as Map<String, dynamic>);
    newSave.referenceId = snapshot.reference.id;
    return newSave;
  }

  factory Saves.fromJson(Map<String, dynamic> json) => saveFromJson(json);

  Map<String, dynamic> toJson() => saveToJson(this);

  @override
  String toString() => 'Saves<$nameToStorage>';
}

Saves saveFromJson(Map<String, dynamic> json) {
  return Saves(
    json['name'] as String,
    gridToStorage: json['grid'] as List<dynamic>,
    currentValue: json['slider'] as double,
    sizeOfGrid: json['size'] as double,
    totalSizeOfGrid: json['totalSize'] as int,
  );
}

Map<String, dynamic> saveToJson(Saves instance) => <String, dynamic>{
      'name': instance.nameToStorage,
      'grid': instance.gridToStorage,
      'slider': instance.currentValue,
      'size': instance.sizeOfGrid,
      'totalSize': instance.totalSizeOfGrid,
    };
