import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/saves.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('saves');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addSave(Saves save) {
    return collection.add(save.toJson());
  }
}
