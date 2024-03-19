import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class MyFirestore {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addUser(
      String firstName, String lastName, String address, String zipCode) async {
    try {
      await _firestore.collection('users').add({
        'firstName': firstName,
        'lastName': lastName,
        'address': address,
        'zipCode': zipCode,
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error adding user: $e');
      }
      throw e;
    }
  }

  Future<List<Object?>> getUsers() async {
    try {
      QuerySnapshot querySnapshot = await _firestore.collection('users').get();
      return querySnapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error getting users: $e');
      }
      throw e;
    }
  }
}
