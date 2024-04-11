import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository {
  final CollectionReference _collection;

  FirestoreRepository(String collectionName)
      : _collection = FirebaseFirestore.instance.collection(collectionName);

  Future<void> addDocument(Map<String, dynamic> data) async {
    try {
      await _collection.add(data);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateDocument(
      String documentId, Map<String, dynamic> data) async {
    try {
      await _collection.doc(documentId).update(data);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDocument(String documentId) async {
    try {
      await _collection.doc(documentId).delete();
    } catch (e) {
      rethrow;
    }
  }
}
