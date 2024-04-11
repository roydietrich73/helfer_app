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
      rethrow;
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
      rethrow;
    }
  }
}

class FirestoreRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference _settingsCollection =
      FirebaseFirestore.instance.collection('settings');
  final CollectionReference _profilesCollection =
      FirebaseFirestore.instance.collection('profiles');

  Future<void> createUser(String userId, Map<String, dynamic> userData) async {
    await _usersCollection.doc(userId).set(userData);
  }

  Future<Map<String, dynamic>> getUser(String userId) async {
    final userData = await _usersCollection.doc(userId).get();
    return userData.data() as Map<String, dynamic>;
  }

  Future<void> saveSettings(
      String userId, Map<String, dynamic> settingsData) async {
    await _settingsCollection.doc(userId).set(settingsData);
  }

  Future<Map<String, dynamic>> getSettings(String userId) async {
    final settingsData = await _settingsCollection.doc(userId).get();
    return settingsData.data() as Map<String, dynamic>;
  }

  Future<void> saveProfile(
      String userId, Map<String, dynamic> profileData) async {
    await _profilesCollection.doc(userId).set(profileData);
  }

  Future<Map<String, dynamic>> getProfile(String userId) async {
    final profileData = await _profilesCollection.doc(userId).get();
    return profileData.data() as Map<String, dynamic>;
  }
}
/*
//aufruf in einer beispielseite


class UserProfilePage extends StatefulWidget {
  final String userId;

  const UserProfilePage({Key? key, required this.userId}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final FirestoreRepository _repository = FirestoreRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _repository.getProfile(widget.userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'));
          } else {
            final profileData = snapshot.data;
            // Zeigen Sie die Profildaten an oder verwenden Sie sie wie gewünscht
            return Center(
              child: Text('Profile: $profileData'),
            );
          }
        },
      ),
    );
  }
}

*/