//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

/*class AuthModel extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String username, String password) async {
    if (username == 'username' && password == 'password') {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isAuthenticated', true);
      _isAuthenticated = true;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', false);
    _isAuthenticated = false;
    notifyListeners();
  }

  Future<void> checkAuthStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _isAuthenticated = prefs.getBool('isAuthenticated') ?? false;
    notifyListeners();
  }
}*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class AuthModel extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  late bool isLoading;

  var user;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<String?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await _usersCollection.doc(userCredential.user!.uid).set({
        'email': email,
      });
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // Abmeldung
  Future<void> signOut() async {
    await _auth.signOut();
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }

  Future<String?> updateEmail(String newEmail) async {
    try {
      await _auth.currentUser!.updateEmail(newEmail);
      await _usersCollection
          .doc(_auth.currentUser!.uid)
          .update({'email': newEmail});
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> deleteUser() async {
    await _usersCollection.doc(_auth.currentUser!.uid).delete();
    await _auth.currentUser!.delete();
  }
}
