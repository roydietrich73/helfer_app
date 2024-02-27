import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository {
  final CollectionReference _collection;

  FirestoreRepository(String collectionName)
      : _collection = FirebaseFirestore.instance.collection(collectionName);

  Future<void> addDocument(Map<String, dynamic> data) async {
    try {
      await _collection.add(data);
    } catch (e) {
      print('Fehler beim Hinzufügen des Dokuments: $e');
      rethrow;
    }
  }

  Future<void> updateDocument(
      String documentId, Map<String, dynamic> data) async {
    try {
      await _collection.doc(documentId).update(data);
    } catch (e) {
      print('Fehler beim Aktualisieren des Dokuments: $e');
      rethrow;
    }
  }

  Future<void> deleteDocument(String documentId) async {
    try {
      await _collection.doc(documentId).delete();
    } catch (e) {
      print('Fehler beim Löschen des Dokuments: $e');
      rethrow;
    }
  }

  /*Stream<List<Map<String, dynamic>>> getDocuments() {
    return _collection
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }*/
}
/*}void main() async {
  FirestoreRepository repository = FirestoreRepository('example_collection');

  // Beispiel: Hinzufügen eines Dokuments
  await repository.addDocument({'name': 'John', 'age': 30});

  // Beispiel: Aktualisieren eines Dokuments
  await repository.updateDocument('document_id', {'age': 31});

  // Beispiel: Löschen eines Dokuments
  await repository.deleteDocument('document_id');

  // Beispiel: Abrufen von Dokumenten
  repository.getDocuments().listen((documents) {
    documents.forEach((doc) {
      print(doc);
    });
  });
}*/